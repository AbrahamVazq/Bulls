//
//  ViewController.m
//  Bulls
//
//  Created by Moisés Abraham Vázquez on 26/01/17.
//  Copyright © 2017 Moisés Abraham Vázquez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
////////////////////////////////////////////////////////////////////////////////////////////////////
-(void) showAletr:(NSString *)mensaje withTitle:(NSString *)titulo
{
    UIAlertController * alerta = [UIAlertController alertControllerWithTitle: titulo message: mensaje preferredStyle:UIAlertControllerStyleAlert ];
    
    UIAlertAction * okAction = [UIAlertAction actionWithTitle: @" OK " style:UIAlertActionStyleDefault handler:^(UIAlertAction *action)
    {
        //hacer algo cuando se tapea el boton
    }];
    
    [alerta addAction:okAction];
    UIViewController *viewController = [[[[UIApplication sharedApplication] delegate] window] rootViewController];
    [viewController presentViewController: alerta animated:true completion:nil];
}
////////////////////////////////////////////////////////////////////////////////////////////////////
-(void) sliderValor:(UISlider *)slider
{
    NSLog(@"El valor del slider: %f", slider.value);
}
////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
-(IBAction)muestraAlerta:(id)sender
{
    [self showAletr: @"Mensaje" withTitle: @"Titulo"];
}
////////////////////////////////////////////////////////////////////////////////////////////////////
-(IBAction)sliderMoved:(id)sender
{
    [self sliderValor: sender];
}
////////////////////////////////////////////////////////////////////////////////////////////////////

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
////////////////////////////////////////////////////////////////////////////////////////////////////
@end
