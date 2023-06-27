import 'package:flutter/material.dart';

class Following extends StatefulWidget {
  const Following({super.key});

  @override
  State<Following> createState() => _FollowingState();
}

class _FollowingState extends State<Following> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.grey[600],
          ),
          onPressed: () {},
        ),
        title:  Text('Following', style: TextStyle(
            color: Colors.grey[600]
        )),
        centerTitle: true,
        actions: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(50.0),
            child: Image.asset(
              'assets/profile1.jpg',
              height: 90.0,
              width: 50.0,
                fit: BoxFit.fill
            ),
          )
        ],
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.grey[300],

      body: Center(
        child: Column(

          children: [
            Container(
              color: Colors.white,
              height: 250,
              child: Column(
                children: [
                  Align(child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
                    child: Text('Topics', style: TextStyle(fontWeight: FontWeight.bold),),
                  ), alignment: Alignment.topLeft,),
                  Expanded(
                    child: SizedBox(
                      // height: 400,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(

                            padding: EdgeInsets.symmetric(horizontal: 8),

                            // child: const Center(child: Text('Item 1', style: TextStyle(fontSize: 18, color: Colors.white),)),
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                        'assets/profile1.jpg',
                                        height: 100.0,
                                        width: 100.0,
                                        fit: BoxFit.fill
                                    ),
                                  ),
                                  Text('app1')
                                ],
                              ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 8),

                            // child: const Center(child: Text('Item 1', style: TextStyle(fontSize: 18, color: Colors.white),)),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                      'assets/profile1.jpg',
                                      height: 100.0,
                                      width: 100.0,
                                      fit: BoxFit.fill
                                  ),
                                ),
                                Text('app1')
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 8),

                            // child: const Center(child: Text('Item 1', style: TextStyle(fontSize: 18, color: Colors.white),)),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                      'assets/profile1.jpg',
                                      height: 100.0,
                                      width: 100.0,
                                      fit: BoxFit.fill
                                  ),
                                ),
                                Text('app1')
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 8),

                            // child: const Center(child: Text('Item 1', style: TextStyle(fontSize: 18, color: Colors.white),)),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                      'assets/profile1.jpg',
                                      height: 100.0,
                                      width: 100.0,
                                      fit: BoxFit.fill
                                  ),
                                ),
                                Text('app1')
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 8),

                            // child: const Center(child: Text('Item 1', style: TextStyle(fontSize: 18, color: Colors.white),)),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                      'assets/profile1.jpg',
                                      height: 100.0,
                                      width: 100.0,
                                      fit: BoxFit.fill
                                  ),
                                ),
                                Text('app1')
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),

                  // const SizedBox(height: 50,),

                  GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () => print("OnTap"),

                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          top: BorderSide(width: 1, color: Colors.grey)
                        ),
                          // borderRadius: BorderRadius.circular(10)
                      ),
                        // color: Colors.white,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            minimumSize: const Size.fromHeight(50), // NEW
                          ),
                          onPressed: () {},
                          child: const Text(
                            'View all and manage',
                            style: TextStyle(fontSize: 17, color: Colors.blue),
                          ),
                        ),
                        // Code above
                    ), // Container
                  )
                ],
              )
            ),


            const SizedBox(height: 20,),

            Container(
                color: Colors.white,
                height: 250,
                child: Column(
                  children: [
                    Align(child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
                      child: Text('Sources', style: TextStyle(fontWeight: FontWeight.bold),),
                    ), alignment: Alignment.topLeft,),
                    Expanded(
                      child: SizedBox(
                        // height: 400,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Container(

                              padding: EdgeInsets.symmetric(horizontal: 8),

                              // child: const Center(child: Text('Item 1', style: TextStyle(fontSize: 18, color: Colors.white),)),
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                        'assets/profile1.jpg',
                                        height: 100.0,
                                        width: 100.0,
                                        fit: BoxFit.fill
                                    ),
                                  ),
                                  Text('app1')
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 8),

                              // child: const Center(child: Text('Item 1', style: TextStyle(fontSize: 18, color: Colors.white),)),
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                        'assets/profile1.jpg',
                                        height: 100.0,
                                        width: 100.0,
                                        fit: BoxFit.fill
                                    ),
                                  ),
                                  Text('app1')
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 8),

                              // child: const Center(child: Text('Item 1', style: TextStyle(fontSize: 18, color: Colors.white),)),
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                        'assets/profile1.jpg',
                                        height: 100.0,
                                        width: 100.0,
                                        fit: BoxFit.fill
                                    ),
                                  ),
                                  Text('app1')
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 8),

                              // child: const Center(child: Text('Item 1', style: TextStyle(fontSize: 18, color: Colors.white),)),
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                        'assets/profile1.jpg',
                                        height: 100.0,
                                        width: 100.0,
                                        fit: BoxFit.fill
                                    ),
                                  ),
                                  Text('app1')
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 8),

                              // child: const Center(child: Text('Item 1', style: TextStyle(fontSize: 18, color: Colors.white),)),
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                        'assets/profile1.jpg',
                                        height: 100.0,
                                        width: 100.0,
                                        fit: BoxFit.fill
                                    ),
                                  ),
                                  Text('app1')
                                ],
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),

                    // const SizedBox(height: 50,),

                    GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () => print("OnTap"),

                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                              top: BorderSide(width: 1, color: Colors.grey)
                          ),
                          // borderRadius: BorderRadius.circular(10)
                        ),
                        // color: Colors.white,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            minimumSize: const Size.fromHeight(50), // NEW
                          ),
                          onPressed: () {},
                          child: const Text(
                            'View all and manage',
                            style: TextStyle(fontSize: 17, color: Colors.blue),
                          ),
                        ),
                        // Code above
                      ), // Container
                    )
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}
