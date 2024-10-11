part of '../page.dart';

class _SearchSection extends StatelessWidget {
  const _SearchSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Find any SATISFY Products...',
            hintStyle: GoogleFonts.inter(
              fontSize: 12.0,
            ),
            contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
            prefixIcon: Icon(
              Icons.search,
              size: 20,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(14.0)),
              borderSide: BorderSide(
                color: Color(0xffEDEFF5).withOpacity(1.0),
                width: 2.0,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(14.0)),
              borderSide: BorderSide(
                color: Color(0xffEDEFF5).withOpacity(1.0), // Opacity for enabled border
                width: 2.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(14.0)),
              borderSide: BorderSide(
                color: Colors.blueAccent.withOpacity(1.0), // Higher opacity for focused border to differentiate
                width: 2.0,
              ),
            ),
            filled: false,
          ),
        )
    );
  }
}