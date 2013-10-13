#import "UITranslucent.h"

@implementation UITranslucent
	- (id) init {
		self = [super init];
		
		if(self) {
			[self setup];
		}
		
		return self;
	}
	
	- (id) initWithFrame: (CGRect) frame {
		self = [super initWithFrame: frame];
		
		if(self) {
			[self setup];
		}
		
		return self;
	}
	
	- (id) initWithCoder: (NSCoder *) coder {
		self = [super initWithCoder: coder];
		
		if(self) {
			[self setup];
		}
		
		return self;
	}
	
	- (void) setup {
		[self setClipsToBounds:		YES];
		[self setBackgroundColor:	[UIColor clearColor]];
		
		if(![self toolbar]) {
			[self setToolbar: [[UIToolbar alloc] initWithFrames: [self bounds]]];
			[self.layer insertSublayer: [self.toolbar layer] atIndex: 0];
			[self.toolbar setBarStyle: UIBarStyleBlackTranslucent];
		}
	}
	
	- (void) layoutSubviews {
		[super layoutSubviews];
		[self.toolbar setFrame: [self bounds]];
	}
@end