import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/screen_colors.dart';

class RoundedRectangleButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color borderColor;
  final VoidCallback onPressed;
  final IconData? icon;
  final String? image;


  const RoundedRectangleButton({
    super.key,
    required this.text,
    required this.textColor,
    required this.borderColor,
    required this.onPressed,
    this.icon, this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13.0, vertical: 4),
      child: (icon==null && image ==null)?SizedBox(
                height: 52, // Adjust height as needed
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22), // Rounded corners
                    border: Border.all(color: borderColor, width: 1),
                  ),
                  child: Center(
                    child: InkWell(
                      onTap: onPressed,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          text,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            color: textColor,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
              )
        :(image==null && icon!=null)?SizedBox(
        height: 52, // Adjust height as needed
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22), // Rounded corners
            border: Border.all(color: borderColor, width: 1),
          ),
          child: Center(
            child: InkWell(
              onTap: onPressed,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Text(
                      text,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        color: textColor,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(width: 10,),
                    PopupMenuButton<String>(
                      icon: Icon(icon,color: SColors.nextButtonOrange,size: 32,),
                        onSelected: (value){
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(value)),
                        );
                        },
                        itemBuilder: (context) =>[
                           PopupMenuItem(child: Text('Cheese Burger')),
                           PopupMenuItem(child: Text('Veg Burger')),
                           PopupMenuItem(child: Text('Chicken Burger')),
                           PopupMenuItem( child: Text('Double Patty Burger')),
                        ]
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      )
          :(image!=null && icon==null)?SizedBox(
        height: 52, // Adjust height as needed
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22), // Rounded corners
            border: Border.all(color: borderColor, width: 1),
          ),
          child: Center(
            child: InkWell(
              onTap: onPressed,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Image.asset(image!),
                    SizedBox(width: 10,),
                    Text(
                      text,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        color: textColor,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),

                  ],
                ),
              ),
            ),
          ),
        ),
      )
          :SizedBox(),

    );
  }
}
