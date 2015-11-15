//
//  ModulesMacro.h

// And Other Variable : sel_getName(_cmd) ,  __FILE__ , __FUNCTION__ , __PRETTY_FUNCTION__ , __LINE__




#ifdef DEBUG


#define DLog(format, ...) NSLog(format, ##__VA_ARGS__)

#define DLOG(_format, args...) printf("%s (%d):   %s\n",__PRETTY_FUNCTION__ , __LINE__,[[NSString stringWithFormat:(_format),##args] UTF8String])


#else


#define DLog(format, ...)

#define DLOG(_format, args...)


#endif






#define RANDOM(x) arc4random() % x





