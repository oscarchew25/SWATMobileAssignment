import requests
import json

###########################
#     Read json input     #
###########################

with open('input.json') as f:
    data = json.load(f)
    for p in data:
        
        output = {}  
        #output['Manifest'] = 'Manifest'
		
        Organisation= p['Organisation']
        Repository = p['Repository']
        Tag = p['Tag']
		
        output['Organisation'] = Organisation
        output['Repository'] = Repository
        output['Tag'] = Tag

        Org_repo = Organisation+'/'+Repository
		
        ####################
        #     Get Image    #
        ####################
		
        img = requests.get('https://quay.io/api/v1/repository/'+Org_repo+'/tag/'+Tag+'/images?owned=true')
		
        ########################
        #     Get Image ID     #
        ########################
        ImgStr = img.content.decode('ascii')
        result = ImgStr.replace("'","")
        ImgStr_split = result.split()
        try:
            ImgID = ImgStr_split[ImgStr_split.index('"id":') + 1]
            ImgID = ImgID[1:-2]
        except:
            print("No Image ID found")

        ###########################
        #     Perform secscan     #
        ###########################

        scannedResult = requests.get('https://quay.io/api/v1/repository/'+Org_repo+'/image/'+ImgID+'/security?vulnerabilities=true')
        data = scannedResult.json()

        with open('SecScanResult.json','w') as outfile:
            json.dump(data,outfile,indent=4,sort_keys=True)

        ###########################
        #     Write into Json     #
        ###########################
		
        with open('data.json', 'r') as json_file:
            data = json.load(json_file)
            for Feature in data['data']['Layer']['Features']:
                if len(Feature) == 6:
            
                    output['Vulnerabilities'] = []
                    output['Vulnerabilities'].append({'PackageName': Feature['Name']})
            
                    for vul in Feature['Vulnerabilities']:
                        output['Vulnerabilities'].append(vul)

                    with open('output.json','a+') as outfile:
                        json.dump(output,outfile,indent=4,sort_keys=True)
			
