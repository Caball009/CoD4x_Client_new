/*
===========================================================================
    Copyright (C) 2010-2013  Ninja and TheKelm
    Copyright (C) 1999-2005 Id Software, Inc.

    This file is part of CoD4X18-Server source code.

    CoD4X18-Server source code is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as
    published by the Free Software Foundation, either version 3 of the
    License, or (at your option) any later version.

    CoD4X18-Server source code is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>
===========================================================================
*/



// server.h

//=============================================================================

#ifndef __Q_SHARED_H__
#define __Q_SHARED_H__

//#define _LAGDEBUG

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <stdarg.h>
#include <string.h>
#include <time.h>
#include <math.h>

#include <math.h>
#include <stdio.h>



#include "game/def.h"

#ifndef __stdcall
#define __stdcall __attribute__((stdcall))
#endif

#ifndef __noreturn
#define __noreturn __attribute__((noreturn))
#endif


#ifndef __cdecl
#define __cdecl __attribute__((cdecl))
#endif

#define DLL_PUBLIC __attribute__ ((visibility ("default")))
#define DLL_LOCAL __attribute__ ((visibility ("hidden")))

#ifdef __linux

#define __optimize2 __attribute__ ((optimize("-O2")))
#define __optimize3 __attribute__ ((optimize("-O3"))) __attribute__ ((noinline))


#else

#define __optimize2
#define __optimize3

#endif

#ifdef _MSC_VER
#define __align(X) __declspec(align(X))
#else
#define __align(X) __attribute__((aligned (X)))
#endif

#define REGPARM(X)   __attribute__ ((regparm(X)))

#ifndef QDECL
#define QDECL
#endif

#ifndef __fastcall
#define __fastcall __attribute__((fastcall))
#endif

#ifndef __thiscall
#define __thiscall __attribute__((thiscall))
#endif


#ifndef __regparm1
#define __regparm1 __attribute__((regparm(1)))
#endif

#ifndef __regparm2
#define __regparm2 __attribute__((regparm(2)))
#endif

#ifndef __regparm3
#define __regparm3 __attribute__((regparm(3)))
#endif

typedef unsigned int long DWORD;
typedef unsigned short WORD;

#ifndef LOWORD
#define LOWORD(a) ((WORD)(a))
#endif

#ifndef HIWORD
#define HIWORD(a) ((WORD)(((DWORD)(a) >> 16) & 0xFFFF))
#endif

typedef unsigned char byte;
typedef enum {qfalse, qtrue}	qboolean;
typedef char bool8;

#define _STRINGIFY(s) #s
#define STRINGIFY(s) _STRINGIFY(s)

//#define DEVRELEASE


#ifndef STDCALL
#define STDCALL __attribute__((stdcall))
#endif

#define HOMEPATH_NAME_UNIX ".callofduty4"
#define HOMEPATH_NAME_WIN		"CallofDuty4"
#define HOMEPATH_NAME_MACOSX		HOMEPATH_NAME_WIN

#define	MAX_STRING_TOKENS	1024	// max tokens resulting from Cmd_TokenizeString
#define	MAX_STRING_CHARS	1024


#define Q_COLOR_ESCAPE	'^'
#define Q_IsColorString(p)	( p && *(p) == Q_COLOR_ESCAPE && *((p)+1) && *((p)+1) != Q_COLOR_ESCAPE )

#define COLOR_BLACK		'0'
#define COLOR_RED		'1'
#define COLOR_GREEN		'2'
#define COLOR_YELLOW	'3'
#define COLOR_BLUE		'4'
#define COLOR_CYAN		'5'
#define COLOR_MAGENTA	'6'
#define COLOR_WHITE		'7'
#define ColorIndex(c)	( ( (c) - '0' ) & 7 )

#define S_COLOR_BLACK	"^0"
#define S_COLOR_RED		"^1"
#define S_COLOR_GREEN	"^2"
#define S_COLOR_YELLOW	"^3"
#define S_COLOR_BLUE	"^4"
#define S_COLOR_CYAN	"^5"
#define S_COLOR_MAGENTA	"^6"
#define S_COLOR_WHITE	"^7"

#define MAX_OSPATH 256
#define	MAX_INFO_STRING		1024
#define	MAX_INFO_KEY		1024
#define	MAX_INFO_VALUE		1024
#define	MAX_TOKEN_CHARS		1024

#define	MAX_STRING_CHARS	1024	// max length of a string passed to Cmd_TokenizeString
#define	MAX_NAME_LENGTH		16	// max length of a client name
#define	MAX_QPATH		64	// max length of a quake game pathname

#define	BIG_INFO_STRING		8192  // used for system info key only
#define	BIG_INFO_KEY		8192
#define	BIG_INFO_VALUE		8192

#define TRUNCATE_LENGTH	64

#define LIBRARY_ADDRESS_BY_HANDLE(dlhandle)((NULL == dlhandle) ? 0 :((struct link_map *)dlhandle)->l_addr)

#ifdef _MSC_VER
  // vsnprintf is ISO/IEC 9899:1999
  // abstracting this to make it portable
  int Q_vsnprintf(char *str, size_t size, const char *format, va_list ap);
#else
  #define Q_vsnprintf vsnprintf
#endif


void Com_Memset(void*, int, int);
//#define Com_Memset memset
void Com_Memcpy(void*, const void*, int);
//#define Com_Memcpy memcpy


#define NET_WANT_READ -0x7000
#define NET_WANT_WRITE -0x7001
#define NET_CONNRESET -0x7002
#define NET_ERROR -0x7003

#define ARRAY_COUNT(array) (sizeof((array))/sizeof((array)[0]))

int Q_isprint( int c );
int Q_islower( int c );
int Q_isupper( int c );
int Q_isalpha( int c );
qboolean Q_isanumber( const char *s );
qboolean Q_isintegral( float f );
qboolean Q_isprintstring( char* s );

typedef int fileHandle_t;

#ifdef _MSC_VER
int Q_vsnprintf(char *str, size_t size, const char *format, va_list ap);
#endif

void Q_strncpyz( char *dest, const char *src, int destsize );
int Q_stricmpn (const char *s1, const char *s2, int n);
int Q_strncmp (const char *s1, const char *s2, int n);
int Q_stricmp (const char *s1, const char *s2);
char *Q_strlwr( char *s1 );
char *Q_strupr( char *s1 );
void Q_bstrcpy(char* dest, const char* src);
void Q_strncat( char *dest, int size, const char *src );
void Q_strlcat( char *dest, size_t size, const char *src, int cpylimit);
void Q_strnrepl( char *dest, size_t size, const char *src, const char* find, const char* replacement);
const char *Q_stristr( const char *s, const char *find);
int  Q_strichr( const char *s, char find);
int Q_PrintStrlen( const char *string );
char *Q_CleanStr( char *string );
int Q_CountChar(const char *string, char tocount);
int QDECL Com_sprintf(char *dest, int size, const char *fmt, ...);
void Q_strchrrepl(char *string, char torepl, char repl);
char* Q_BitConv(int val);
int Q_strLF2CRLF(const char* input, char* output, int outputlimit );
void Q_strfrontcat(char *dest, int size, const char* src);

#ifndef BSPC
char* va( const char *format, ... );
#define mvabuf
#endif

/*
#ifndef __QSHARED_C__
char* QDECL va_replacement(char *dest, int size, const char *fmt, ...);
#define mvabuf char va_buffer[MAX_STRING_CHARS]
#define va(fmt,... ) va_replacement(va_buffer, sizeof(va_buffer), fmt, __VA_ARGS__)
#endif
*/

void Com_TruncateLongString( char *buffer, const char *s );


qboolean Info_Validate( const char *s );
char *Info_ValueForKey( const char *s, const char *key );
void Info_SetValueForKey( char *s, const char *key, const char *value );
void BigInfo_SetValueForKey( char *s, const char *key, const char *value );
void Info_Print( const char *s );
void Info_SetEncodedValueForKey( char *s, const char *key, const char *value, int len );
int Info_DecodedValueForKey( const char *s, const char *key, char *out, int outbuflen);

qboolean __cdecl I_iscsym(int c);


char	*SV_ExpandNewlines( char *in );


void PIXBeginNamedEvent(int, const char*,...);


#include "q_math.h"


/*****************************************************
*** Parsing files ***
*****************************************************/
void Com_ParseReset();
char* Com_ParseGetToken(char* line);
int Com_ParseTokenLength(char* token);

qboolean isNumeric(const char* string, int size);

/*
=====================================================================
 Functions to operate onto a stack in lifo mode
=====================================================================
*/

void stack_init(void *array[], size_t size);
qboolean stack_push(void *array[], int size, void* pointer);
void* stack_pop(void *array[], int size);

/*
=====================================================================
  Writing XML STRINGS
=====================================================================
*/


typedef struct{
    int		parents;
    qboolean	last;
    void *stack[48];
    char *buffer;
    int bufposition;
    char *encoding;
    size_t buffersize;
}xml_t;

void XML_Init( xml_t *base, char *s, int size, char* encoding);
void XML_Escape( char* buffer, size_t size, const char* string);
qboolean QDECL XML_OpenTag( xml_t *base, char* root, int count,... );
void XML_CloseTag(xml_t *base);
void XML_AppendToBuffer( xml_t *base, const char* s );

char *Com_SkipCharset( char *s, char *sep );
char *Com_SkipTokens( char *s, int numTokens, char *sep );

void COM_DefaultExtension( char *path, int maxSize, const char *extension );

qboolean I_IsEqualUnitWSpace(char *cmp1, char *cmp2);
unsigned char I_CleanChar(unsigned char in);
char* I_itoa(int value, char *buf, int bufsize);


qboolean isFloat(const char* string, int size);
qboolean isInteger(const char* string, int size);
qboolean isVector(const char* string, int size, int dim);
qboolean strToVect(const char* string, float *vect, int dim);


/*
=====================================================================================

SCRIPT PARSING

=====================================================================================
*/

#ifdef __cplusplus

enum ParseTokenType
{
  PARSE_TOKEN_UNKNOWN = 0x0,
  PARSE_TOKEN_NUMBER = 0x1,
  PARSE_TOKEN_STRING = 0x2,
  PARSE_TOKEN_NAME = 0x3,
  PARSE_TOKEN_HASH = 0x4,
  PARSE_TOKEN_PUNCTUATION = 0x5
};

typedef struct parseInfo_t
{
	char token[MAX_TOKEN_CHARS];
	enum ParseTokenType tokenType;
	int lines;
	bool ungetToken;
	bool spaceDelimited;
	bool keepStringQuotes;
	bool csv;
	bool negativeNumbers;
	const char *errorPrefix;
	const char *warningPrefix;
	int backup_lines;
	const char *backup_text;
	const char *parseFile;
} parseInfo_t;



// this just controls the comment printing, it doesn't actually load a file
void Com_BeginParseSession( const char *filename );
void Com_EndParseSession( void );

int Com_GetCurrentParseLine( void );

// Will never return NULL, just empty strings.
// An empty string will only be returned at end of file.
// ParseOnLine will return empty if there isn't another token on this line

// this funny typedef just means a moving pointer into a const char * buffer
struct parseInfo_t *Com_Parse( const char *( *data_p ) );
struct parseInfo_t *Com_ParseOnLine( const char *( *data_p ) );
const char *Com_ParseRestOfLine( const char *( *data_p ) );
const char *__cdecl Com_GetLastTokenPos();
void Com_UngetToken( void );
/*
#ifdef __cplusplus
void Com_MatchToken( const char *( *buf_p ), const char *match, qboolean warning = qfalse );
#else
void Com_MatchToken( const char *( *buf_p ), const char *match, qboolean warning );
#endif
*/
void Com_ScriptError( const char *msg, ... );
void Com_ScriptWarning( const char *msg, ... );

qboolean Com_SkipBracedSection( const char *( *program ), unsigned int startDepth, const int iMaxNesting );
void Com_SkipRestOfLine( const char *( *data ) );

float Com_ParseFloat( const char *( *buf_p ) );
int Com_ParseInt( const char *( *buf_p ) );

void Com_Parse1DMatrix( const char *( *buf_p ), int x, float *m );
void Com_Parse2DMatrix( const char *( *buf_p ), int y, int x, float *m );
void Com_Parse3DMatrix( const char *( *buf_p ), int z, int y, int x, float *m );


#endif
//=====================================================================================

typedef union
{
    int i;
    byte rgba[4];
}ucolor_t;


// parameters to the main Error routine
typedef enum {
	ERR_UNKNOWN,
	ERR_FATAL,					// exit the entire game with a popup window
	ERR_DROP,					// print to console and disconnect from game
	ERR_SERVERDISCONNECT,		// don't kill server
	ERR_DISCONNECT,				// client disconnected from the server
	ERR_SCRIPT_DROP,					// script error occured
  ERR_UNKNOWN2,
  ERR_LOCALIZATION
} errorParm_t;

void QDECL Com_Error( errorParm_t level, const char *error, ...);
void Com_SetErrorEntered();


#ifndef M_PI
#define M_PI        3.14159265358979323846f // matches value in gcc v2 math.h
#endif

// angle indexes
#define PITCH               0       // up / down
#define YAW                 1       // left / right
#define ROLL                2       // fall over

// plane types are used to speed some tests
// 0-2 are axial planes
#define PLANE_X         0
#define PLANE_Y         1
#define PLANE_Z         2
#define PLANE_NON_AXIAL 3


#define SOLID_BMODEL 0xffffff
#define MASK_EFLAGS 0xFFFFFF
/*
=================
PlaneTypeForNormal
=================
*/
#ifndef BSPC
#define PlaneTypeForNormal( x ) ( x[0] == 1.0 ? PLANE_X : ( x[1] == 1.0 ? PLANE_Y : ( x[2] == 1.0 ? PLANE_Z : PLANE_NON_AXIAL ) ) )
#endif

// plane_t structure
// !!! if this is changed, it must be changed in asm code too !!!
typedef struct cplane_s {//Nothing validated
	vec3_t normal;
	float dist;
	byte type;              // for fast side tests: 0,1,2 = axial, 3 = nonaxial
	byte signbits;          // signx + (signy<<1) + (signz<<2), used as lookup during collision
	byte pad[2];
} cplane_t;

// mode parm for FS_FOpenFile
typedef enum {
	FS_READ,
	FS_WRITE,
	FS_APPEND,
	FS_APPEND_SYNC
} fsMode_t;


//=============================================

float Com_Clamp( float min, float max, float value );


#ifndef BSPC

char    *COM_SkipPath( char *pathname );
void    COM_StripExtension( const char *in, char *out );
void    COM_StripExtension2( const char *in, char *out, int destsize );
void    COM_StripFilename( char *in, char *out );
void    COM_DefaultExtension( char *path, int maxSize, const char *extension );

void    COM_BeginParseSession( const char *name );
void    COM_RestoreParseSession( char **data_p );
void    COM_SetCurrentParseLine( int line );
int     COM_GetCurrentParseLine( void );
char    *COM_Parse( char **data_p );
char    *COM_ParseExt( char **data_p, qboolean allowLineBreak );
int     COM_Compress( char *data_p );
void    COM_ParseError( char *format, ... );
void    COM_ParseWarning( char *format, ... );
//int		COM_ParseInfos( char *buf, int max, char infos[][MAX_INFO_STRING] );

qboolean COM_BitCheck( const int array[], int bitNum );
void COM_BitSet( int array[], int bitNum );
void COM_BitClear( int array[], int bitNum );


#endif

typedef struct
{
  const char *szName;
  int iOffset;
  int iFieldType;
}cspField_t;

#define MAX_TOKENLENGTH     1024

#ifndef TT_STRING
//token types
#define TT_STRING                   1           // string
#define TT_LITERAL                  2           // literal
#define TT_NUMBER                   3           // number
#define TT_NAME                     4           // name
#define TT_PUNCTUATION              5           // punctuation
#endif
/*
typedef struct pc_token_s
{
	int type;
	int subtype;
	int intvalue;
	float floatvalue;
	char string[MAX_TOKENLENGTH];
} pc_token_t;
*/
// data is an in/out parm, returns a parsed out token

void    COM_MatchToken( char**buf_p, char *match );

void    Swap_Init( void );

#define POF_PLAYER 4


#define random()    ( ( rand() & 0x7fff ) / ( (float)0x7fff ) )
/*#define crandom()   ( 2.0 * ( random() - 0.5 ) )
*/
qboolean Assert_MyHandler(const char* exp, const char *filename, int line, const char *function, const char *fmt, ...);



#define assert ASSERT
#define assertx XASSERT
#define release_assert RELEASE_ASSERT
#define release_assertx RELEASE_XASSERT
#define ASSERT_HANDLER(x, f, l, fu, ...) (Assert_MyHandler(x, f, l, fu, __VA_ARGS__))

#ifdef NDEBUG
#define XASSERT(x, ...)
#define ASSERT(x)
#define RELEASE_XASSERT(x, ...) (!(x) && ASSERT_HANDLER(#x, __FILE__, __LINE__, __func__, __VA_ARGS__) && (ASSERT_HALT(), 1))
#define RELEASE_ASSERT(x) RELEASE_XASSERT(x, NULL)
#else
#define XASSERT(x, ...) (!(x) && ASSERT_HANDLER(#x, __FILE__, __LINE__, __func__, __VA_ARGS__) && (ASSERT_HALT(), 1))
#define ASSERT(x) XASSERT(x, NULL)
#define RELEASE_XASSERT XASSERT
#define RELEASE_ASSERT ASSERT
#endif

#ifdef __cplusplus

#include <cstdlib>
#define ASSERT_HALT() (std::abort())

#endif

typedef enum
{
  SASYS_UI = 0x0,
  SASYS_CGAME = 0x1,
  SASYS_GAME = 0x2,
  SASYS_COUNT = 0x3,
}snd_alias_system_t;

#define UNREACHABLE_CODE 0

#ifndef CLIPHANDLE_DEFINED
#define CLIPHANDLE_DEFINED
typedef unsigned int clipHandle_t;
#endif

#include "q_platform.h"
#include "sys_cod4defs.h"
#ifdef __cplusplus
#include "common/cvar.h"

#define	PORT_ANY			-1
#define	PORT_SERVER			28960

typedef struct {
	qboolean	overflowed;		//0x00
	qboolean	readonly;		//0x04
	byte		*data;			//0x08
	byte		*splitdata;		//0x0c
	int		maxsize;		//0x10
	int		cursize;		//0x14
	int		splitsize;		//0x18
	int		readcount;		//0x1c
	int		bit;			//0x20	// for bitwise reads and writes
	int		lastRefEntity;		//0x24
} msg_t; //Size: 0x28

enum netadrtype_t
{
  NA_BOT = 0x0,
  NA_BAD = 0x1,
  NA_LOOPBACK = 0x2,
  NA_BROADCAST = 0x3,
  NA_IP = 0x4
};

typedef enum {
	NS_CLIENT,
	NS_SERVER
} netsrc_t;

#pragma pack(push, 4)
struct netadr_t
{
  netadrtype_t type;
  byte ip[4];
  uint16_t port;
};
#pragma pack(pop)

void		NET_Init( void );
void		NET_Shutdown( void );
void		NET_Restart( void );
void		NET_Config( qboolean enableNetworking );

void		NET_SendPacket (netsrc_t sock, int length, const void *data, netadr_t to);
void		QDECL NET_OutOfBandPrint( netsrc_t net_socket, netadr_t adr, const char *format, ...);
void		QDECL NET_OutOfBandData( netsrc_t sock, netadr_t adr, byte *format, int len );

qboolean	NET_CompareAdr (netadr_t a, netadr_t b);
qboolean	NET_CompareBaseAdr (netadr_t a, netadr_t b);
qboolean	NET_IsLocalAddress (netadr_t adr);
const char	*NET_AdrToString (netadr_t a);
qboolean	NET_StringToAdr ( const char *s, netadr_t *a);
qboolean	NET_GetLoopPacket (netsrc_t sock, netadr_t *net_from, msg_t *net_message);
void		NET_Sleep(int msec);



typedef enum
{
  CON_CHANNEL_DONT_FILTER = 0x0,
  CON_CHANNEL_ERROR = 0x1,
  CON_CHANNEL_GAMENOTIFY = 0x2,
  CON_CHANNEL_BOLDGAME = 0x3,
  CON_CHANNEL_SUBTITLE = 0x4,
  CON_CHANNEL_OBITUARY = 0x5,
  CON_CHANNEL_LOGFILEONLY = 0x6,
  CON_CHANNEL_CONSOLEONLY = 0x7,
  CON_CHANNEL_GFX = 0x8,
  CON_CHANNEL_SOUND = 0x9,
  CON_CHANNEL_FILES = 0xA,
  CON_CHANNEL_DEVGUI = 0xB,
  CON_CHANNEL_PROFILE = 0xC,
  CON_CHANNEL_UI = 0xD,
  CON_CHANNEL_CLIENT = 0xE,
  CON_CHANNEL_SERVER = 0xF,
  CON_CHANNEL_SYSTEM = 0x10,
  CON_CHANNEL_PLAYERWEAP = 0x11,
  CON_CHANNEL_AI = 0x12,
  CON_CHANNEL_ANIM = 0x13,
  CON_CHANNEL_PHYS = 0x14,
  CON_CHANNEL_FX = 0x15,
  CON_CHANNEL_LEADERBOARDS = 0x16,
  CON_CHANNEL_LIVE = 0x17,
  CON_CHANNEL_PARSERSCRIPT = 0x18,
  CON_CHANNEL_SCRIPT = 0x19,
  CON_CHANNEL_SPAWNSYSTEM = 0x1A,
  CON_CHANNEL_COOPINFO = 0x1B,
  CON_CHANNEL_SERVERDEMO = 0x1C,
  CON_CHANNEL_DDL = 0x1D,
  CON_CHANNEL_NETWORK = 0x1E,
  CON_CHANNEL_SCHEDULER = 0x1F,
  CON_FIRST_DEBUG_CHANNEL = 0x1F,
  CON_CHANNEL_TASK = 0x20,
  CON_CHANNEL_SPU = 0x21,
  CON_CHANNEL_FILEDL = 0x22,
  CON_BUILTIN_CHANNEL_COUNT = 0x23
}conChannel_t;

typedef enum {
	CA_UNINITIALIZED,
	CA_DISCONNECTED, 	// not talking to a server
	CA_AUTHORIZING,		// not used any more, was checking cd key
	CA_CHALLENGING,		// sending challenge packets to the server
	CA_CONNECTING,		// sending request packets to the server
	CA_CONNECTED,		// netchan_t established, getting gamestate
	CA_STATSSYNC,
	CA_LOADING,			// only during cgame initialization, never during main loop
	CA_PRIMED,			// got gamestate, waiting for first frame
	CA_ACTIVE,			// game views should be displayed
	CA_CINEMATIC		// playing a cinematic or a static pic, not connected to a server
} connstate_t;

void 		QDECL Com_Printf(int channel, const char *fmt, ... ) __attribute__ ((format (printf, 2, 3)));
void 		QDECL Com_DPrintf( int channel, const char *fmt, ... ) __attribute__ ((format (printf, 2, 3)));
void 		QDECL Com_PrintError( int channel, const char *fmt, ... ) __attribute__ ((format (printf, 2, 3)));
void 		QDECL Com_PrintWarning( int channel, const char *fmt, ... ) __attribute__ ((format (printf, 2, 3)));

static inline bool Com_BitCheckAssert(const unsigned int *array, unsigned int bitNum, unsigned int size)
{
  assert(array);
  assert(bitNum < (unsigned int)(8 * size));
  return (array[bitNum >> 5] & (1 << (bitNum & 0x1F))) != 0;
}

#endif

const char * Com_GetBuildDisplayName();
int strlen_noncrt(const char *str);

double GetLeanFraction(float fFrac);


#ifdef __cplusplus
template <class T> static void AssignToSmallerType(T &dest, int src)
{
  dest = src;
  assert((int) dest == src);
}
#endif


#endif

