#####################################
#      Connect to organization      #
#####################################


provider "github" {
	token		 = "bf583c418c40448cf0c5c994a6aeda5b877bd8c1"
	organization = "oscarchew-organization"
}

#################################
#      Create a repository      #
#################################

resource "github_repository" "SWATMobile"{
	name		= "SWATMobile"
	description = "This repository is for SWATMobile Assignment" 	#optional
	
	private = true 		#optional
}

##########################################
#      Add user to the organization      #
##########################################

resource "github_membership" "membership_for_user1" {
  username 	= "User1"
  role		= "member" #optional 
}

resource "github_membership" "membership_for_user2" {
  username = "User2"
}

resource "github_membership" "membership_for_user3" {
  username = "User3"
}

resource "github_membership" "membership_for_user4" {
  username = "User4"
}

resource "github_membership" "membership_for_user5" {
  username = "User5"
}

resource "github_membership" "membership_for_user6" {
  username = "User6"
}

resource "github_membership" "membership_for_user7" {
  username = "User7"
}

resource "github_membership" "membership_for_user8" {
  username = "User8"
}

resource "github_membership" "membership_for_user9" {
  username = "User9"
}

resource "github_membership" "membership_for_user10" {
  username = "User10"
}

###########################################
#     Create new team in organization     #
###########################################

resource "github_team" "Team1" {
  name        = "Team1"
  description = "This is Team1"		#optional
  privacy     = "closed"			#optional
}

resource "github_team" "Team2" {
  name        = "Team2"
  description = "This is Team2"
  privacy     = "closed"
}

resource "github_team" "Team3" {
  name        = "Team3"
  description = "This is Team3"
  privacy     = "closed"
}

resource "github_team" "Team4" {
  name        = "Team4"
  description = "This is Team4"
  privacy     = "closed"
}

resource "github_team" "Team5" {
  name        = "Team5"
  description = "This is Team5"
  privacy     = "closed"
}

resource "github_team" "Team6" {
  name        = "Team6"
  description = "This is Team6"
  privacy     = "closed"
}

######################################
#          Add user to team          #
######################################

# Team1
resource "github_team_membership" "team1_user1_membership" {
  team_id  = "Team1"
  username = "User1"
  role     = "member"		#optional
}

resource "github_team_membership" "team1_user2_membership" {
  team_id  = "Team1"
  username = "User2"
  role     = "maintainer"
}

resource "github_team_membership" "team1_user3_membership" {
  team_id  = "Team1"
  username = "User3"
}

resource "github_team_membership" "team1_user5_membership" {
  team_id  = "Team1"
  username = "User5"
}

resource "github_team_membership" "team1_user6_membership" {
  team_id  = "Team1"
  username = "User6"
}

resource "github_team_membership" "team1_user7_membership" {
  team_id  = "Team1"
  username = "User7"
}

resource "github_team_membership" "team1_user8_membership" {
  team_id  = "Team1"
  username = "User8"

}

resource "github_team_membership" "team1_user9_membership" {
  team_id  = "Team1"
  username = "User9"
}

resource "github_team_membership" "team1_user10_membership" {
  team_id  = "Team1"
  username = "User10"
}


# Team2
resource "github_team_membership" "team2_user1_membership" {
  team_id  = "Team2"
  username = "User1"
  role     = "maintainer"
}

resource "github_team_membership" "team2_user2_membership" {
  team_id  = "Team2"
  username = "User2"
}

resource "github_team_membership" "team2_user3_membership" {
  team_id  = "Team2"
  username = "User3"
}

resource "github_team_membership" "team2_user4_membership" {
  team_id  = "Team2"
  username = "User4"
}

resource "github_team_membership" "team2_user6_membership" {
  team_id  = "Team2"
  username = "User6"
}

resource "github_team_membership" "team2_user7_membership" {
  team_id  = "Team2"
  username = "User7"
}

resource "github_team_membership" "team2_user8_membership" {
  team_id  = "Team2"
  username = "User8"
}

resource "github_team_membership" "team2_user9_membership" {
  team_id  = "Team2"
  username = "User9"
}

resource "github_team_membership" "team2_user10_membership" {
  team_id  = "Team2"
  username = "User10"
}


# Team3
resource "github_team_membership" "team3_user1_membership" {
  team_id  = "Team3"
  username = "User1"
}

resource "github_team_membership" "team3_user2_membership" {
  team_id  = "Team3"
  username = "User2"
}

resource "github_team_membership" "team3_user3_membership" {
  team_id  = "Team3"
  username = "User3"
  role     = "maintainer"
}

resource "github_team_membership" "team3_user4_membership" {
  team_id  = "Team3"
  username = "User4"
}

resource "github_team_membership" "team3_user5_membership" {
  team_id  = "Team3"
  username = "User5"
}

resource "github_team_membership" "team3_user6_membership" {
  team_id  = "Team3"
  username = "User6"
}

resource "github_team_membership" "team3_user7_membership" {
  team_id  = "Team3"
  username = "User7"
}

# Team4
resource "github_team_membership" "team4_user1_membership" {
  team_id  = "Team4"
  username = "User1"
}

resource "github_team_membership" "team4_user2_membership" {
  team_id  = "Team4"
  username = "User2"
  role     = "maintainer"
}

resource "github_team_membership" "team4_user3_membership" {
  team_id  = "Team4"
  username = "User3"
}

resource "github_team_membership" "team4_user4_membership" {
  team_id  = "Team4"
  username = "User4"
}

resource "github_team_membership" "team4_user5_membership" {
  team_id  = "Team4"
  username = "User5"
}

resource "github_team_membership" "team4_user6_membership" {
  team_id  = "Team4"
  username = "User6"
}

resource "github_team_membership" "team4_user7_membership" {
  team_id  = "Team4"
  username = "User7"
}

resource "github_team_membership" "team4_user8_membership" {
  team_id  = "Team4"
  username = "User8"
}

resource "github_team_membership" "team4_user9_membership" {
  team_id  = "Team4"
  username = "User9"
}

resource "github_team_membership" "team4_user10_membership" {
  team_id  = "Team4"
  username = "User10"
}


# Team5
resource "github_team_membership" "team5_user1_membership" {
  team_id  = "Team5"
  username = "User1"
  role     = "maintainer"
}

resource "github_team_membership" "team5_user2_membership" {
  team_id  = "Team5"
  username = "User2"
}

resource "github_team_membership" "team5_user3_membership" {
  team_id  = "Team5"
  username = "User3"
}

resource "github_team_membership" "team5_user4_membership" {
  team_id  = "Team5"
  username = "User4"
}

resource "github_team_membership" "team5_user6_membership" {
  team_id  = "Team5"
  username = "User6"
}

resource "github_team_membership" "team5_user7_membership" {
  team_id  = "Team5"
  username = "User7"
}

resource "github_team_membership" "team5_user8_membership" {
  team_id  = "Team5"
  username = "User8"
}

resource "github_team_membership" "team5_user9_membership" {
  team_id  = "Team5"
  username = "User9"
}

resource "github_team_membership" "team5_user10_membership" {
  team_id  = "Team5"
  username = "User10"
}


# Team6
resource "github_team_membership" "team6_user1_membership" {
  team_id  = "Team6"
  username = "User1"
}

resource "github_team_membership" "team6_user2_membership" {
  team_id  = "Team6"
  username = "User2"
}

resource "github_team_membership" "team6_user3_membership" {
  team_id  = "Team6"
  username = "User3"
}

resource "github_team_membership" "team6_user4_membership" {
  team_id  = "Team6"
  username = "User4"
  role     = "maintainer"
}

resource "github_team_membership" "team6_user5_membership" {
  team_id  = "Team6"
  username = "User5"
}

resource "github_team_membership" "team6_user7_membership" {
  team_id  = "Team6"
  username = "User7"
}

resource "github_team_membership" "team6_user8_membership" {
  team_id  = "Team6"
  username = "User8"
}

resource "github_team_membership" "team6_user9_membership" {
  team_id  = "Team6"
  username = "User9"
}

resource "github_team_membership" "team6_user10_membership" {
  team_id  = "Team6"
  username = "User10"
}










