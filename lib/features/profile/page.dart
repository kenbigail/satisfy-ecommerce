import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Container(
          width: double.infinity,
          height: 50,
          color: Colors.white,
          child: Center(
            child: Text(
              'Your Profile',
              style:
                  GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 20),
            ),
          ),
        ),
        SizedBox(height: 20),
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/images/Profile-Page.png'),
            ),
            Positioned(
              bottom: -12,
              child: ElevatedButton.icon(
                onPressed: () {
                  // Handle add button action
                },
                icon: Icon(
                  Icons.camera_alt,
                  color: Colors.black,
                  size: 14,
                ),
                label: Text(
                  'Add',
                  style: TextStyle(color: Colors.black, fontSize: 10),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  // Adjust padding to shrink button size
                  minimumSize: Size(50, 25),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  elevation: 1,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Text(
          'Keenan Abigail',
          style: GoogleFonts.inter(
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 5),
        Text(
          '@kabigails_',
          style: GoogleFonts.inter(
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
        ),
        SizedBox(height: 25),
        Container(
          alignment: Alignment.centerLeft,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Account',
                  style: GoogleFonts.inter(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Edit Profile',
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'My Orders',
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Help',
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                SizedBox(height: 20),
                Text(
                  'General',
                  style: GoogleFonts.inter(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Privacy & Policy',
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Terms & Service',
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'General Feedback',
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
