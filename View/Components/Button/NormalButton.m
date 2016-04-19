#import "NormalButton.h"
#import "ColorHelper.h"

@implementation NormalButton


+(id) buttonWithType:(UIButtonType)buttonType {
    NormalButton* button = [super buttonWithType:buttonType];
    [button initializeValues];
    return button;
}

-(id) initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initializeValues];
    }
    return self;
}

-(void) awakeFromNib
{
    [self initializeValues];
}

-(void) initializeValues
{
    [self addTarget: self action:@selector(buttonTouchUpInsideAction:) forControlEvents:UIControlEventTouchUpInside];
}


-(void) buttonTouchUpInsideAction: (id)sender
{
    if (self.didTouchUpInsideAction) self.didTouchUpInsideAction(sender);
}


-(void) setupWithConfig: (NSDictionary*)config
{
    NSDictionary* dic = config;
    
    // title
    if (dic[@"n_title"]) [self setTitle: dic[@"n_title"] forState:UIControlStateNormal];
    if (dic[@"s_title"]) [self setTitle: dic[@"s_title"] forState:UIControlStateSelected];
    if (dic[@"h_title"]) [self setTitle: dic[@"h_title"] forState:UIControlStateHighlighted];
    
    if (dic[@"n_title_color"]) [self setTitleColor: [ColorHelper parseColor: dic[@"n_title_color"]] forState:UIControlStateNormal];
    if (dic[@"s_title_color"]) [self setTitleColor: [ColorHelper parseColor: dic[@"s_title_color"]] forState:UIControlStateSelected];
    if (dic[@"h_title_color"]) [self setTitleColor: [ColorHelper parseColor: dic[@"h_title_color"]] forState:UIControlStateHighlighted];
    
    if (dic[@"n_title_shadow_color"]) [self setTitleShadowColor: [ColorHelper parseColor: dic[@"n_title_shadow_color"]] forState:UIControlStateNormal];
    if (dic[@"s_title_shadow_color"]) [self setTitleShadowColor: [ColorHelper parseColor: dic[@"s_title_shadow_color"]] forState:UIControlStateSelected];
    if (dic[@"h_title_shadow_color"]) [self setTitleShadowColor: [ColorHelper parseColor: dic[@"h_title_shadow_color"]] forState:UIControlStateHighlighted];
    
    // image
    if (dic[@"n_image"]) [self setImage: dic[@"n_image"] forState:UIControlStateNormal];
    if (dic[@"s_image"]) [self setImage: dic[@"s_image"] forState:UIControlStateSelected];
    if (dic[@"h_image"]) [self setImage: dic[@"h_image"] forState:UIControlStateHighlighted];
    
    if (dic[@"n_bg_image"]) [self setBackgroundImage: dic[@"n_bg_image"] forState:UIControlStateNormal];
    if (dic[@"s_bg_image"]) [self setBackgroundImage: dic[@"s_bg_image"] forState:UIControlStateSelected];
    if (dic[@"h_bg_image"]) [self setBackgroundImage: dic[@"h_bg_image"] forState:UIControlStateHighlighted];
    
    // attribute title
    if (dic[@"n_attributed_title"]) [self setAttributedTitle: dic[@"n_attributed_title"] forState:UIControlStateNormal];
    if (dic[@"s_attributed_title"]) [self setAttributedTitle: dic[@"s_attributed_title"] forState:UIControlStateSelected];
    if (dic[@"h_attributed_title"]) [self setAttributedTitle: dic[@"h_attributed_title"] forState:UIControlStateHighlighted];
}

@end
