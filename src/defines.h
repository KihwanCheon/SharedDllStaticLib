

#ifdef WIN32
#ifndef STATIC_LIB
#ifdef SHARED_DLL_EXPORTS
#define DLL_API __declspec(dllexport)
#else
#define DLL_API __declspec(dllimport)
#endif

#else
#define DLL_API
#endif
#else
#define DLL_API
#endif