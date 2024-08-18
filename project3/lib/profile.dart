import 'package:flutter/material.dart';


class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(30.0),
          child: Container(
            color: const Color.fromARGB(255, 229, 229, 229),
            child: const Padding(
              padding: EdgeInsets.all(10),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Profile",  style: TextStyle( fontSize: 20)),
                
              ],
            ),
          ),
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
          padding:  const EdgeInsets.fromLTRB(30, 20, 30, 0),
          child: ListView(
            children: [
              const Row(
                children: [
                 ProfileSection()
                ],
              ),
              const Divider(
                height: 20,
                thickness: 2, 
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color.fromARGB(29, 0, 0, 0), width: 2),
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(0, 255, 255, 255),
                  ) ,
                  child: Row(children: [
                    Image.asset("assets/images/party.png",),
                    const Text("  Friends updates"),
                    const SizedBox(width: 95),
                    const Icon(Icons.arrow_forward_ios_rounded, size: 16, color: Color.fromARGB(127, 0, 0, 0)),

                  ],),
                ),
            ],),
            const SizedBox(height: 20),
            const Text("Statistic", style: TextStyle(fontSize: 20,),),
              Row(
              children: [
                
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color.fromARGB(29, 0, 0, 0), width: 2),
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(0, 255, 255, 255),
                  ) ,
                  child: Row(children: [
                    Image.asset("assets/images/fire.png",),
                    const SizedBox(width: 5),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,  
                      children: [
                      Text(
                      '3',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Day Streak',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                      ),
                    ),
                    ],),
                    const SizedBox(width: 24),
                  ],),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color.fromARGB(29, 0, 0, 0), width: 2),
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(0, 255, 255, 255),
                  ) ,
                  child: Row(children: [
                    Image.asset("assets/images/spark.png",),
                    const SizedBox(width: 5),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,  
                      children: [
                      Text(
                      '1432',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Total XP',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                      ),
                    ),
                    ],),
                    const SizedBox(width: 40),
                  ],),
                ),
            ],),
             const SizedBox(height: 20),
              Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color.fromARGB(29, 0, 0, 0), width: 2),
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(0, 255, 255, 255),
                  ) ,
                  child: Row(children: [
                    Image.asset("assets/images/golden_medal.png",),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,  
                      children: [
                      Text(
                      'Bronze',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Current League',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                      ),
                    ),
                    ],),
                  ],),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color.fromARGB(29, 0, 0, 0), width: 2),
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(0, 255, 255, 255),
                  ) ,
                  child: Row(children: [
                    Image.asset("assets/images/medal.png",),
                    const SizedBox(width: 5),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,  
                      children: [
                      Text(
                      '0',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Top 3 Finishes',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                      ),
                    ),
                    ],),
                  ],),
                ),
            ],),
            const SizedBox(height: 20),
            const Row(children: [
              Text("Friends", style: TextStyle(fontSize: 20),),
              Spacer(),
              Text("ADD FRIENDS", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 2, 160, 251)),),
            ],),
            
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color.fromARGB(29, 0, 0, 0), width: 2),
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(0, 255, 255, 255),
                  ),
                  child: const Column(
                    children: [
                      Row(children: [
                                  Text(
                                  'FOLLOWING',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 2, 160, 251))
                                ),
                                 SizedBox(width: 50),
                                 Text(
                                  'FOLLOWERS',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(133, 0, 0, 0))
                                ),
                                ],
                                
                                ),
                       Row(children: [
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: Color.fromARGB(255, 171, 112, 223),
                        ),
                        SizedBox(width: 5),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,  
                                  children: [
                                  Text(
                                  'Hardi',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  '4367 XP',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.grey,
                                  ),
                                ),
                                ],),
                        SizedBox(width: 170),
                        Icon(Icons.arrow_forward_ios_rounded, size: 16, color: Color.fromARGB(127, 0, 0, 0)),
                      ]),
                        const Row(children: [
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: Color.fromARGB(255, 223, 112, 112),
                        ),
                        SizedBox(width: 5),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,  
                                  children: [
                                  Text(
                                  'Krishna',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  '2334 XP',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.grey,
                                  ),
                                ),
                                ],),
                        SizedBox(width: 155),
                        Icon(Icons.arrow_forward_ios_rounded, size: 16, color: Color.fromARGB(127, 0, 0, 0)),
                      ]),  
                      
        ],
      ),
    ),
  ],
),
            ],
          ),
        ),
        ),
       ),
       
    );
  }



} 

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nidhi Pandya',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              Text(
                'Nidhi12',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 3),
              Row(
                children: [
                  Icon(Icons.access_time_filled, size: 16, color: Color.fromARGB(127, 0, 0, 0)),
                  SizedBox(width: 5),
                  Text(
                    'Joined March 2022',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(width: 77),
          CircleAvatar(
            radius: 35,
            backgroundImage:  AssetImage("assets/images/profile.png"),
          ),
        ],
      ),
    );
  }
}

