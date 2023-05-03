#ifndef _GAME_GAME_SHARED_H_
#define _GAME_GAME_SHARED_H_

#include <q_shared.h>



#define MAX_HUDELEMENTS 31

enum he_type_t
{
  HE_TYPE_FREE = 0x0,
  HE_TYPE_TEXT = 0x1,
  HE_TYPE_VALUE = 0x2,
  HE_TYPE_PLAYERNAME = 0x3,
  HE_TYPE_MAPNAME = 0x4,
  HE_TYPE_GAMETYPE = 0x5,
  HE_TYPE_MATERIAL = 0x6,
  HE_TYPE_TIMER_DOWN = 0x7,
  HE_TYPE_TIMER_UP = 0x8,
  HE_TYPE_TENTHS_TIMER_DOWN = 0x9,
  HE_TYPE_TENTHS_TIMER_UP = 0xA,
  HE_TYPE_CLOCK_DOWN = 0xB,
  HE_TYPE_CLOCK_UP = 0xC,
  HE_TYPE_WAYPOINT = 0xD,
  HE_TYPE_COUNT = 0xE,
};

struct hudelem_colorsplit_t
{
  char r;
  char g;
  char b;
  char a;
};

union hudelem_color_t
{
  hudelem_colorsplit_t split;
  int rgba;
};

struct hudelem_s
{
  he_type_t type;
  float x;
  float y;
  float z;
  int targetEntNum;
  float fontScale;
  int font;
  int alignOrg;
  int alignScreen;
  hudelem_color_t color;
  hudelem_color_t fromColor; //0x28
  int fadeStartTime; //0x2c
  int fadeTime;
  int label;
  int width;
  int height; //0x3C
  int materialIndex;
  int offscreenMaterialIdx; //0x44
  int fromWidth;
  int fromHeight;
  int scaleStartTime;
  int scaleTime;
  float fromX;
  float fromY;
  int fromAlignOrg;
  int fromAlignScreen;
  int moveStartTime;
  int moveTime;
  int time;
  int duration;
  float value;
  int text;
  float sort;
  hudelem_color_t glowColor; //0x84
  int fxBirthTime;
  int fxLetterTime;
  int fxDecayStartTime;
  int fxDecayDuration;
  int soundID;
  int flags;
};

struct hudElemState_s
{
  hudelem_s current[MAX_HUDELEMENTS];
  hudelem_s archival[MAX_HUDELEMENTS];
};

enum objectiveState_t
{
  OBJST_EMPTY = 0x0,
  OBJST_ACTIVE = 0x1,
  OBJST_INVISIBLE = 0x2,
  OBJST_DONE = 0x3,
  OBJST_CURRENT = 0x4,
  OBJST_FAILED = 0x5,
  OBJST_NUMSTATES = 0x6
};

struct objective_s
{
  objectiveState_t state;
  float origin[3];
  int entNum;
  int teamNum;
  int icon;
};

struct ActionSlotParam_SpecifyWeapon_t
{
  unsigned int index;
};

struct ActionSlotParam_t
{
  ActionSlotParam_SpecifyWeapon_t specifyWeapon;
};

struct mantleState_t
{
	float	yaw;
	int	timer;
	int	transIndex;
	int	flags;
};

struct sprintState_t
{
	int	sprintButtonUpRequired;
	int	sprintDelay;
	int	lastSprintStart;
	int	lastSprintEnd;
	int	sprintStartMaxLength;
};

enum OffhandSecondaryClass_t
{
  PLAYER_OFFHAND_SECONDARY_SMOKE = 0x0,
  PLAYER_OFFHAND_SECONDARY_FLASH = 0x1,
  PLAYER_OFFHAND_SECONDARIES_TOTAL = 0x2,
};

enum ViewLockTypes_t
{
  PLAYERVIEWLOCK_NONE = 0x0,
  PLAYERVIEWLOCK_FULL = 0x1,
  PLAYERVIEWLOCK_WEAPONJITTER = 0x2,
  PLAYERVIEWLOCKCOUNT = 0x3,
};


enum ActionSlotType_t
{
  ACTIONSLOTTYPE_DONOTHING = 0x0,
  ACTIONSLOTTYPE_SPECIFYWEAPON = 0x1,
  ACTIONSLOTTYPE_ALTWEAPONTOGGLE = 0x2,
  ACTIONSLOTTYPE_NIGHTVISION = 0x3,
  ACTIONSLOTTYPECOUNT = 0x4,
};


typedef enum {
	TR_STATIONARY,
	TR_INTERPOLATE,				// non-parametric, but interpolate between snapshots
	TR_LINEAR,
	TR_LINEAR_STOP,
	TR_SINE,					// value = base + sin( time / duration ) * delta
	TR_GRAVITY
} trType_t;

typedef struct {
	trType_t	trType;
	int		trTime;
	int		trDuration;			// if non 0, trTime + trDuration = stop time
	vec3_t		trBase;
	vec3_t		trDelta;			// velocity, etc
} trajectory_t;


struct LerpEntityStatePhysicsJitter
{
  float innerRadius;
  float minDisplacement;
  float maxDisplacement;
};


struct LerpEntityStatePlayer
{
  float leanf;
  int movementDir;
};

struct LerpEntityStateLoopFx
{
  float cullDist;
  int period;
};

struct LerpEntityStateCustomExplode
{
  int startTime;
};

struct LerpEntityStateTurret
{
  vec3_t gunAngles;
};

struct LerpEntityStateAnonymous
{
  int data[7];
};

struct LerpEntityStateExplosion
{
  float innerRadius;
  float magnitude;
};

struct LerpEntityStateBulletHit
{
  vec3_t start;
};

struct LerpEntityStatePrimaryLight
{
  byte colorAndExp[4];
  float intensity;
  float radius;
  float cosHalfFovOuter;
  float cosHalfFovInner;
};

struct LerpEntityStateMissile
{
  int launchTime;
};

struct LerpEntityStateSoundBlend
{
  float lerp;
};

struct LerpEntityStateExplosionJolt
{
  float innerRadius;
  vec3_t impulse;
};

struct LerpEntityStateVehicle
{
  float bodyPitch;
  float bodyRoll;
  float steerYaw;
  int materialTime;
  float gunPitch;
  float gunYaw;
  int team;
};

struct LerpEntityStateEarthquake
{
  float scale;
  float radius;
  int duration;
};

union LerpEntityStateTypeUnion
{
  struct LerpEntityStateTurret turret;
  struct LerpEntityStateLoopFx loopFx;
  struct LerpEntityStatePrimaryLight primaryLight;
  struct LerpEntityStatePlayer player;
  struct LerpEntityStateVehicle vehicle;
  struct LerpEntityStateMissile missile;
  struct LerpEntityStateSoundBlend soundBlend;
  struct LerpEntityStateBulletHit bulletHit;
  struct LerpEntityStateEarthquake earthquake;
  struct LerpEntityStateCustomExplode customExplode;
  struct LerpEntityStateExplosion explosion;
  struct LerpEntityStateExplosionJolt explosionJolt;
  struct LerpEntityStatePhysicsJitter physicsJitter;
  struct LerpEntityStateAnonymous anonymous;
};



struct LerpEntityState
{
  int eFlags;
  trajectory_t pos;
  trajectory_t apos;
  union LerpEntityStateTypeUnion u;
};

enum entityType_t
{
  ET_GENERAL = 0x0,
  ET_PLAYER = 0x1,
  ET_PLAYER_CORPSE = 0x2,
  ET_ITEM = 0x3,
  ET_MISSILE = 0x4,
  ET_INVISIBLE = 0x5,
  ET_SCRIPTMOVER = 0x6,
  ET_SOUND_BLEND = 0x7,
  ET_FX = 0x8,
  ET_LOOP_FX = 0x9,
  ET_PRIMARY_LIGHT = 0xA,
  ET_MG42 = 0xB,
  ET_HELICOPTER = 0xC,
  ET_PLANE = 0xD,
  ET_VEHICLE = 0xE,
  ET_VEHICLE_COLLMAP = 0xF,
  ET_VEHICLE_CORPSE = 0x10,
  ET_EVENTS = 0x11,
  ET_MOVER = 0x99 //Dummy for botlib
};

// entityState_t is the information conveyed from the server
// in an update message about entities that the client will
// need to render in some way
// Different eTypes may use the information in different ways
// The messages are delta compressed, so it doesn't really matter if
// the structure size is fairly large

struct entityState_s {//Confirmed names and offsets but not types

	int		number;			// entity index	//0x00
	enum entityType_t	eType;			// entityType_t	//0x04

	struct LerpEntityState	lerp;

	int		time2;			//0x70


	int		otherEntityNum;		//0x74 shotgun sources, etc
	int		attackerEntityNum;	//0x78

	int		groundEntityNum;	//0x7c -1 = in air

	int		loopSound;		//0x80 constantly loop this sound
	int		surfType;		//0x84

	union{
		int brushModel;
		//int triggerModel;
		int item;
		int xmodel;
		int primaryLight;
	}index;			//0x88

	int		clientNum;		//0x8c 0 to (MAX_CLIENTS - 1), for players and corpses
	int		iHeadIcon;		//0x90
	int		iHeadIconTeam;		//0x94

	int		solid;			//0x98 for client side prediction, trap_linkentity sets this properly	0x98

	int		eventParm;		//0x9c impulse events -- muzzle flashes, footsteps, etc
	int		eventSequence;		//0xa0

	vec4_t		events;			//0xa4
	vec4_t		eventParms;		//0xb4

	// for players
	int		weapon;			//0xc4 determines weapon and flash model, etc
	int		weaponModel;		//0xc8
	int		legsAnim;		//0xcc mask off ANIM_TOGGLEBIT
	int		torsoAnim;		//0xd0 mask off ANIM_TOGGLEBIT

	union{
		int eventParm2;
		int hintString;
		int fxId;
		int helicopterStage;	//0xd4
	}un1;
	union{
		int hintType;
		int vehicleXModel;
		int actorFlags;
		uint8_t weaponModel;
	}un2;			//0xd8
	int		fTorsoPitch;		//0xdc
	int		fWaistPitch;		//0xe0
	uint32_t	partBits[4];		//0xe4
};	//sizeof(entityState_t): 0xf4



// playerState_t is the information needed by both the client and server
// to predict player motion and actions
// nothing outside of pmove should modify these, or some degree of prediction error
// will occur

// you can't add anything to this without modifying the code in msg.c

// playerState_t is a full superset of entityState_t as it is used by players,
// so if a playerState_t is transmitted, the entityState_t can be fully derived
// from it.
typedef struct playerState_s {
	int		commandTime;  // 0
	int		pm_type;  // 4
	int		bobCycle;  // 8
	int		pm_flags;  // 12
	int		weapFlags;  // 16
	int		otherFlags;  // 20
	int		pm_time;  // 24
	vec3_t		origin;  // 28

	// http://zeroy.com/script/player/getvelocity.htm
	vec3_t		velocity;  // 40
	vec2_t		oldVelocity;

	int		weaponTime;  // 60
	int		weaponDelay;  // 64
	int		grenadeTimeLeft;  // 68
	int		throwBackGrenadeOwner;  // 72
	int		throwBackGrenadeTimeLeft;  // 76
	int		weaponRestrictKickTime;  // 80
	int		foliageSoundTime;  // 84
	int		gravity;  // 88
	float	leanf;  // 92
	int		speed;  // 96
	vec3_t		delta_angles;  // 100

	/*The ground entity's rotation will be added onto the player's view.  In particular, this will
	* cause the player's yaw to rotate around the entity's z-axis instead of the world z-axis.
	* Any rotation that the reference entity undergoes will affect the player.
	* http://zeroy.com/script/player/playersetgroundreferenceent.htm */
	int		groundEntityNum;  // 112

	vec3_t		vLadderVec;  // 116
	int			jumpTime;  // 128
	float		jumpOriginZ;  // 132

	// Animations as in mp/playeranim.script and animtrees/multiplayer.atr, it also depends on mp/playeranimtypes.txt (the currently used weapon)
	int		legsTimer;  // 136
	int		legsAnim;  // 140
	int		torsoTimer;  // 144
	int		torsoAnim;  // 148

	int		legsAnimDuration; // 152
	int		torsoAnimDuration; // 156

	int		damageTimer;  // 160
	int		damageDuration;  // 164
	int		flinchYawAnim;  // 168
	int		movementDir;  // 172
	int		eFlags;  // 176
	int		eventSequence;  // 180

	int     events[4];
	unsigned int eventParms[4];

	int		oldEventSequence;

	int		clientNum;  // 220
	int		offHandIndex;  // 224
	OffhandSecondaryClass_t	offhandSecondary;  // 228
	unsigned int weapon;  // 232
	int		weaponstate;  // 236
	unsigned int weaponShotCount;  // 240
	float	fWeaponPosFrac;  // 244
	int		adsDelayTime;  // 248

	// http://zeroy.com/script/player/resetspreadoverride.htm
	// http://zeroy.com/script/player/setspreadoverride.htm
	int		spreadOverride;  // 252
	int		spreadOverrideState;  // 256

	int		viewmodelIndex;  // 260

	vec3_t		viewangles;  // 264
	int		viewHeightTarget;  // 276
	float	viewHeightCurrent;  // 280
	int		viewHeightLerpTime;  // 284
	int		viewHeightLerpTarget;  // 288
	int		viewHeightLerpDown;  // 292
	vec2_t		viewAngleClampBase;  // 296
	vec2_t		viewAngleClampRange;  // 304

	int		damageEvent;  // 312
	int		damageYaw;  // 316
	int		damagePitch;  // 320
	int		damageCount;  // 324

	int		stats[5]; // 328
	int		ammo[128]; // 348
	int		ammoclip[128]; // 860, 0x35C

	unsigned int	weapons[4]; // 1372 0x55C
	unsigned int	weaponold[4]; // 1388 0x56C
	unsigned int	weaponrechamber[4]; // 1404 0x57C

	float		proneDirection;  // 1420
	float		proneDirectionPitch;  // 1424
	float		proneTorsoPitch;  // 1428
	ViewLockTypes_t		viewlocked;  // 1432
	int		viewlocked_entNum;  // 1436

	int		cursorHint;  // 1440
	int		cursorHintString;  // 1444
	int		cursorHintEntIndex;  // 1448

	int		iCompassPlayerInfo;  // 1452
	int		radarEnabled;  // 1456

	int		locationSelectionInfo;  // 1460
	sprintState_t	sprintState;  // 1464

	// used for leaning?
	float		fTorsoPitch;  // 1484
	float		fWaistPitch;  // 1488

	float		holdBreathScale;  // 1492
	int		holdBreathTimer;  // 1496

	// Scales player movement speed by this amount, ???it's actually a float???
	// http://zeroy.com/script/player/setmovespeedscale.htm
	float		moveSpeedScaleMultiplier;  // 1500

	mantleState_t	mantleState;  // 1504
	float		meleeChargeYaw;  // 1520
	int		meleeChargeDist;  // 1524
	int		meleeChargeTime;  // 1528
	int		perks;  // 1532

	ActionSlotType_t	actionSlotType[4];  // 1536
	ActionSlotParam_t		actionSlotParam[4];  // 1552

	int		entityEventSequence; // 1568

	int		weapAnim;  // 1572 0x624
	float	aimSpreadScale;  // 1576

	// http://zeroy.com/script/player/shellshock.htm
	int		shellshockIndex;  // 1580
	int		shellshockTime;  // 1584
	int		shellshockDuration;  // 1588

	// http://zeroy.com/script/player/setdepthoffield.htm
	float		dofNearStart;  // 1592
	float		dofNearEnd;  // 1596
	float		dofFarStart;  // 1600
	float		dofFarEnd;  // 1604
	float		dofNearBlur;  // 1608
	float		dofFarBlur;  // 1612
	float		dofViewmodelStart;  // 1616
	float		dofViewmodelEnd;  // 1620

	int			hudElemLastAssignedSoundID;  // 1624

	objective_s objective[16];
	char weaponmodels[128];

	int		deltaTime;  // 2204
	int		killCamEntity;  // 2208

	hudElemState_s hud;// 2212
} playerState_t;//Size: 0x2f64

#ifndef __cplusplus

typedef struct
{
  uint16_t number;
  uint16_t infoIndex;
}EntHandle;

#else

class EntHandle
{
    public:
      bool isDefined();
      struct gentity_s* ent( );
      int entnum( );
      void setEnt(struct gentity_s *ent);
      static void Shutdown();
      static void Init();

      uint16_t number;
      uint16_t infoIndex;

};
void EntHandleDissociate(struct gentity_s *ent);
void turret_think_client(gentity_s* ent);
#endif

// usercmd_t is sent to the server each client frame
struct __align(2) usercmd_s
{
    int serverTime;
    int buttons;
    int angles[3];
    byte weapon;
    byte offHandIndex;
    char forwardmove; /* Must be char, not byte */
    char rightmove;   /* Must be char, not byte */
    float meleeChargeYaw;
    byte meleeChargeDist;
    byte selectedLocation[2];
    byte pad;
};


struct tagInfo_s
{
  gentity_s *parent;
  gentity_s *next;
  uint16_t name;
  uint16_t pad;
  int index;
  float axis[4][3];
  float parentInvAxis[4][3];
};


#endif