import 'package:flutter/material.dart'; // Import for icons

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Neighborhood Watch'),
      ),
      body: Stack(
        
        children: [
          // Background image
          Image.asset(
            'images/background.jpg',
            fit: BoxFit.cover, 
            height: double.infinity,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Container(
                  margin: EdgeInsets.only(bottom: 20.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      'images/susp.jpg',
                      width: 200.0,
                      height: 150.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

      
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.security,
                        color: Colors.blue), 
                    SizedBox(width: 10.0),
                    Text(
                      'Report Suspicious Activity',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                // Description Text
                Text(
                  'Help keep your neighborhood safe by reporting suspicious activity.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0, color: Colors.white70),
                ),
                SizedBox(height: 20.0),

                // Report Button with Icon
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/report');
                  },
                  icon: Icon(Icons.security),
                  label: Text('Report Activity'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 187, 92, 20),
                    disabledForegroundColor:
                        const Color.fromARGB(255, 82, 143, 255)
                            .withOpacity(0.38),
                    disabledBackgroundColor:
                        Color.fromARGB(255, 179, 126, 13).withOpacity(0.12),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
