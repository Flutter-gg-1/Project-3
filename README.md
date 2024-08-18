# Project-3



### login page 


![Logo](asset\project_img\login.png)

in this page this widget has been used

- Image.asset : is used to show up the title

- TextFiledWidget : custum widget that have in it textfiled widget and can take hint 

- Padding : is used to give some space btwen widget  and some time with sizedBox 

- GestureDetector : is used when user click on it will go to the next page

   - in  GestureDetector there is Navigator will give contxt of new page 
   
   - in it there is Container with text in it 



   ---


### Skills Page

![Logo](asset\project_img\skill.png)

- BottomNavigationBarWidget : custum widget i made to be used multi pages that take index for it to know what selctect icon and what color

-  SingleChildScrollView : is used to enable scroll in the page and dont chnge the child widget that in it like ListView

   - in it there is Column that will be the main layout for all page that have  SingleChildScrollView


- TitleSkillCardWidget : is used with row Layout to show title and the crown number

- CardSkillWidget : is used with Container and GestureDetector to push to new page that show info of this skill


  - LinearProgressIndicator : is used in it with sizedbox to show Progress of the skill based on how many corwn of the total crown 

---

### SkillInfoPage

![Logo](asset\project_img\skill_info.png)


- same is pre page but when user click in any of the skill will take the title and number of the crown 


- Baseline : is used to move some of the icon or text up litle bit

- SkillInfoCardWidget : is used with stack and Positioned in it that can allow img to go outside the Container

- CricleInfoIconWidget : custum widget that use stack and Positioned and in it other Container and icon to show up circle shape with white border inside 

  -  there is method named lockMethod()  that will check if the skill locked or not based on img value and then show lock icon 



---


### ProfilePage

![Logo](asset\project_img\profile.png)


- ProfileTileWidget : custum widget that used to show the Profile of the user 

- ViewFrindWidget : simple custum widget used with ListTile widget to show icon and text 


- ProfileCardIcon : is used to show the Statistics cards and take the title and subtitle and img 


- TableRowWidget : is used to show in the table the user data using row and CircleAvatar widget and text in it 


---



### Challenges page

![Logo](asset\project_img\ch.png)


- ChallengeCardWidget : is used to show first card of the user and used img and text widget with softWrap atrbuit to true and the Column they are is Expanded widget so dont make eorr and show like the ui in figma








