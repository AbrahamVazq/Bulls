//
//  ViewController.h
//  Bulls
//
//  Created by Moisés Abraham Vázquez on 26/01/17.
//  Copyright © 2017 Moisés Abraham Vázquez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

-(void) showAletr: (NSString*)mensaje withTitle:(NSString*) titulo;
-(void) sliderValor: (UISlider*)slider;

- (IBAction)muestraAlerta:(id)sender;
- (IBAction)sliderMoved:(id)sender;
@end

