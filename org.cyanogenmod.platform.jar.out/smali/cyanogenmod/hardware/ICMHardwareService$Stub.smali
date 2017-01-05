.class public abstract Lcyanogenmod/hardware/ICMHardwareService$Stub;
.super Landroid/os/Binder;
.source "ICMHardwareService.java"

# interfaces
.implements Lcyanogenmod/hardware/ICMHardwareService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/hardware/ICMHardwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/hardware/ICMHardwareService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cyanogenmod.hardware.ICMHardwareService"

.field static final TRANSACTION_get:I = 0x2

.field static final TRANSACTION_getCurrentDisplayMode:I = 0x11

.field static final TRANSACTION_getDefaultDisplayMode:I = 0x12

.field static final TRANSACTION_getDisplayColorCalibration:I = 0x4

.field static final TRANSACTION_getDisplayGammaCalibration:I = 0x7

.field static final TRANSACTION_getDisplayModes:I = 0x10

.field static final TRANSACTION_getLtoDestination:I = 0xc

.field static final TRANSACTION_getLtoDownloadInterval:I = 0xd

.field static final TRANSACTION_getLtoSource:I = 0xb

.field static final TRANSACTION_getNumGammaControls:I = 0x6

.field static final TRANSACTION_getSerialNumber:I = 0xe

.field static final TRANSACTION_getSupportedFeatures:I = 0x1

.field static final TRANSACTION_getThermalState:I = 0x16

.field static final TRANSACTION_getUniqueDeviceId:I = 0x1a

.field static final TRANSACTION_getVibratorIntensity:I = 0x9

.field static final TRANSACTION_isSunlightEnhancementSelfManaged:I = 0x19

.field static final TRANSACTION_readPersistentBytes:I = 0x15

.field static final TRANSACTION_registerThermalListener:I = 0x17

.field static final TRANSACTION_requireAdaptiveBacklightForSunlightEnhancement:I = 0xf

.field static final TRANSACTION_set:I = 0x3

.field static final TRANSACTION_setDisplayColorCalibration:I = 0x5

.field static final TRANSACTION_setDisplayGammaCalibration:I = 0x8

.field static final TRANSACTION_setDisplayMode:I = 0x13

.field static final TRANSACTION_setVibratorIntensity:I = 0xa

.field static final TRANSACTION_unRegisterThermalListener:I = 0x18

.field static final TRANSACTION_writePersistentBytes:I = 0x14


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "cyanogenmod.hardware.ICMHardwareService"

    invoke-virtual {p0, p0, v0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcyanogenmod/hardware/ICMHardwareService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 24
    if-nez p0, :cond_4

    .line 25
    return-object v1

    .line 27
    :cond_4
    const-string/jumbo v1, "cyanogenmod.hardware.ICMHardwareService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcyanogenmod/hardware/ICMHardwareService;

    if-eqz v1, :cond_14

    .line 29
    check-cast v0, Lcyanogenmod/hardware/ICMHardwareService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcyanogenmod/hardware/ICMHardwareService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 27
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 39
    sparse-switch p1, :sswitch_data_3be

    .line 302
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v21

    return v21

    .line 43
    :sswitch_8
    const-string/jumbo v21, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/16 v21, 0x1

    return v21

    .line 48
    :sswitch_15
    const-string/jumbo v21, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getSupportedFeatures()I

    move-result v12

    .line 50
    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    const/16 v21, 0x1

    return v21

    .line 56
    .end local v12    # "_result":I
    :sswitch_2e
    const-string/jumbo v21, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 59
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->get(I)Z

    move-result v17

    .line 60
    .local v17, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v17, :cond_53

    const/16 v21, 0x1

    :goto_49
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    const/16 v21, 0x1

    return v21

    .line 61
    :cond_53
    const/16 v21, 0x0

    goto :goto_49

    .line 66
    .end local v4    # "_arg0":I
    .end local v17    # "_result":Z
    :sswitch_56
    const-string/jumbo v21, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 70
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_82

    const/4 v9, 0x1

    .line 71
    .local v9, "_arg1":Z
    :goto_6b
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->set(IZ)Z

    move-result v17

    .line 72
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v17, :cond_84

    const/16 v21, 0x1

    :goto_78
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    const/16 v21, 0x1

    return v21

    .line 70
    .end local v9    # "_arg1":Z
    .end local v17    # "_result":Z
    :cond_82
    const/4 v9, 0x0

    .restart local v9    # "_arg1":Z
    goto :goto_6b

    .line 73
    .restart local v17    # "_result":Z
    :cond_84
    const/16 v21, 0x0

    goto :goto_78

    .line 78
    .end local v4    # "_arg0":I
    .end local v9    # "_arg1":Z
    .end local v17    # "_result":Z
    :sswitch_87
    const-string/jumbo v21, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getDisplayColorCalibration()[I

    move-result-object v19

    .line 80
    .local v19, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 82
    const/16 v21, 0x1

    return v21

    .line 86
    .end local v19    # "_result":[I
    :sswitch_a2
    const-string/jumbo v21, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v8

    .line 89
    .local v8, "_arg0":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->setDisplayColorCalibration([I)Z

    move-result v17

    .line 90
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v17, :cond_c7

    const/16 v21, 0x1

    :goto_bd
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    const/16 v21, 0x1

    return v21

    .line 91
    :cond_c7
    const/16 v21, 0x0

    goto :goto_bd

    .line 96
    .end local v8    # "_arg0":[I
    .end local v17    # "_result":Z
    :sswitch_ca
    const-string/jumbo v21, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getNumGammaControls()I

    move-result v12

    .line 98
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    const/16 v21, 0x1

    return v21

    .line 104
    .end local v12    # "_result":I
    :sswitch_e3
    const-string/jumbo v21, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 107
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getDisplayGammaCalibration(I)[I

    move-result-object v19

    .line 108
    .restart local v19    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 110
    const/16 v21, 0x1

    return v21

    .line 114
    .end local v4    # "_arg0":I
    .end local v19    # "_result":[I
    :sswitch_104
    const-string/jumbo v21, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 118
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v11

    .line 119
    .local v11, "_arg1":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->setDisplayGammaCalibration(I[I)Z

    move-result v17

    .line 120
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v17, :cond_12d

    const/16 v21, 0x1

    :goto_123
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    const/16 v21, 0x1

    return v21

    .line 121
    :cond_12d
    const/16 v21, 0x0

    goto :goto_123

    .line 126
    .end local v4    # "_arg0":I
    .end local v11    # "_arg1":[I
    .end local v17    # "_result":Z
    :sswitch_130
    const-string/jumbo v21, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getVibratorIntensity()[I

    move-result-object v19

    .line 128
    .restart local v19    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 130
    const/16 v21, 0x1

    return v21

    .line 134
    .end local v19    # "_result":[I
    :sswitch_14b
    const-string/jumbo v21, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 137
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->setVibratorIntensity(I)Z

    move-result v17

    .line 138
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    if-eqz v17, :cond_170

    const/16 v21, 0x1

    :goto_166
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    const/16 v21, 0x1

    return v21

    .line 139
    :cond_170
    const/16 v21, 0x0

    goto :goto_166

    .line 144
    .end local v4    # "_arg0":I
    .end local v17    # "_result":Z
    :sswitch_173
    const-string/jumbo v21, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getLtoSource()Ljava/lang/String;

    move-result-object v16

    .line 146
    .local v16, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    const/16 v21, 0x1

    return v21

    .line 152
    .end local v16    # "_result":Ljava/lang/String;
    :sswitch_18e
    const-string/jumbo v21, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getLtoDestination()Ljava/lang/String;

    move-result-object v16

    .line 154
    .restart local v16    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    const/16 v21, 0x1

    return v21

    .line 160
    .end local v16    # "_result":Ljava/lang/String;
    :sswitch_1a9
    const-string/jumbo v21, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getLtoDownloadInterval()J

    move-result-wide v14

    .line 162
    .local v14, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    .line 164
    const/16 v21, 0x1

    return v21

    .line 168
    .end local v14    # "_result":J
    :sswitch_1c2
    const-string/jumbo v21, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getSerialNumber()Ljava/lang/String;

    move-result-object v16

    .line 170
    .restart local v16    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    const/16 v21, 0x1

    return v21

    .line 176
    .end local v16    # "_result":Ljava/lang/String;
    :sswitch_1dd
    const-string/jumbo v21, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->requireAdaptiveBacklightForSunlightEnhancement()Z

    move-result v17

    .line 178
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    if-eqz v17, :cond_1fc

    const/16 v21, 0x1

    :goto_1f2
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    const/16 v21, 0x1

    return v21

    .line 179
    :cond_1fc
    const/16 v21, 0x0

    goto :goto_1f2

    .line 184
    .end local v17    # "_result":Z
    :sswitch_1ff
    const-string/jumbo v21, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getDisplayModes()[Lcyanogenmod/hardware/DisplayMode;

    move-result-object v20

    .line 186
    .local v20, "_result":[Lcyanogenmod/hardware/DisplayMode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    const/16 v21, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 188
    const/16 v21, 0x1

    return v21

    .line 192
    .end local v20    # "_result":[Lcyanogenmod/hardware/DisplayMode;
    :sswitch_21e
    const-string/jumbo v21, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getCurrentDisplayMode()Lcyanogenmod/hardware/DisplayMode;

    move-result-object v13

    .line 194
    .local v13, "_result":Lcyanogenmod/hardware/DisplayMode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    if-eqz v13, :cond_246

    .line 196
    const/16 v21, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    const/16 v21, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Lcyanogenmod/hardware/DisplayMode;->writeToParcel(Landroid/os/Parcel;I)V

    .line 202
    :goto_243
    const/16 v21, 0x1

    return v21

    .line 200
    :cond_246
    const/16 v21, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_243

    .line 206
    .end local v13    # "_result":Lcyanogenmod/hardware/DisplayMode;
    :sswitch_250
    const-string/jumbo v21, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getDefaultDisplayMode()Lcyanogenmod/hardware/DisplayMode;

    move-result-object v13

    .line 208
    .restart local v13    # "_result":Lcyanogenmod/hardware/DisplayMode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    if-eqz v13, :cond_278

    .line 210
    const/16 v21, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    const/16 v21, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Lcyanogenmod/hardware/DisplayMode;->writeToParcel(Landroid/os/Parcel;I)V

    .line 216
    :goto_275
    const/16 v21, 0x1

    return v21

    .line 214
    :cond_278
    const/16 v21, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_275

    .line 220
    .end local v13    # "_result":Lcyanogenmod/hardware/DisplayMode;
    :sswitch_282
    const-string/jumbo v21, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_2bc

    .line 223
    sget-object v21, Lcyanogenmod/hardware/DisplayMode;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcyanogenmod/hardware/DisplayMode;

    .line 229
    :goto_29e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_2be

    const/4 v9, 0x1

    .line 230
    .restart local v9    # "_arg1":Z
    :goto_2a5
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->setDisplayMode(Lcyanogenmod/hardware/DisplayMode;Z)Z

    move-result v17

    .line 231
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    if-eqz v17, :cond_2c0

    const/16 v21, 0x1

    :goto_2b2
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    const/16 v21, 0x1

    return v21

    .line 226
    .end local v9    # "_arg1":Z
    .end local v17    # "_result":Z
    :cond_2bc
    const/4 v5, 0x0

    .local v5, "_arg0":Lcyanogenmod/hardware/DisplayMode;
    goto :goto_29e

    .line 229
    .end local v5    # "_arg0":Lcyanogenmod/hardware/DisplayMode;
    :cond_2be
    const/4 v9, 0x0

    .restart local v9    # "_arg1":Z
    goto :goto_2a5

    .line 232
    .restart local v17    # "_result":Z
    :cond_2c0
    const/16 v21, 0x0

    goto :goto_2b2

    .line 237
    .end local v9    # "_arg1":Z
    .end local v17    # "_result":Z
    :sswitch_2c3
    const-string/jumbo v21, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 241
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 242
    .local v10, "_arg1":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->writePersistentBytes(Ljava/lang/String;[B)Z

    move-result v17

    .line 243
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    if-eqz v17, :cond_2ec

    const/16 v21, 0x1

    :goto_2e2
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    const/16 v21, 0x1

    return v21

    .line 244
    :cond_2ec
    const/16 v21, 0x0

    goto :goto_2e2

    .line 249
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":[B
    .end local v17    # "_result":Z
    :sswitch_2ef
    const-string/jumbo v21, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 252
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->readPersistentBytes(Ljava/lang/String;)[B

    move-result-object v18

    .line 253
    .local v18, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 255
    const/16 v21, 0x1

    return v21

    .line 259
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v18    # "_result":[B
    :sswitch_310
    const-string/jumbo v21, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getThermalState()I

    move-result v12

    .line 261
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    const/16 v21, 0x1

    return v21

    .line 267
    .end local v12    # "_result":I
    :sswitch_329
    const-string/jumbo v21, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcyanogenmod/hardware/IThermalListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/hardware/IThermalListenerCallback;

    move-result-object v6

    .line 270
    .local v6, "_arg0":Lcyanogenmod/hardware/IThermalListenerCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->registerThermalListener(Lcyanogenmod/hardware/IThermalListenerCallback;)Z

    move-result v17

    .line 271
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    if-eqz v17, :cond_352

    const/16 v21, 0x1

    :goto_348
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    const/16 v21, 0x1

    return v21

    .line 272
    :cond_352
    const/16 v21, 0x0

    goto :goto_348

    .line 277
    .end local v6    # "_arg0":Lcyanogenmod/hardware/IThermalListenerCallback;
    .end local v17    # "_result":Z
    :sswitch_355
    const-string/jumbo v21, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcyanogenmod/hardware/IThermalListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/hardware/IThermalListenerCallback;

    move-result-object v6

    .line 280
    .restart local v6    # "_arg0":Lcyanogenmod/hardware/IThermalListenerCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->unRegisterThermalListener(Lcyanogenmod/hardware/IThermalListenerCallback;)Z

    move-result v17

    .line 281
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    if-eqz v17, :cond_37e

    const/16 v21, 0x1

    :goto_374
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    const/16 v21, 0x1

    return v21

    .line 282
    :cond_37e
    const/16 v21, 0x0

    goto :goto_374

    .line 287
    .end local v6    # "_arg0":Lcyanogenmod/hardware/IThermalListenerCallback;
    .end local v17    # "_result":Z
    :sswitch_381
    const-string/jumbo v21, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->isSunlightEnhancementSelfManaged()Z

    move-result v17

    .line 289
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    if-eqz v17, :cond_3a0

    const/16 v21, 0x1

    :goto_396
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    const/16 v21, 0x1

    return v21

    .line 290
    :cond_3a0
    const/16 v21, 0x0

    goto :goto_396

    .line 295
    .end local v17    # "_result":Z
    :sswitch_3a3
    const-string/jumbo v21, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getUniqueDeviceId()Ljava/lang/String;

    move-result-object v16

    .line 297
    .restart local v16    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 299
    const/16 v21, 0x1

    return v21

    .line 39
    :sswitch_data_3be
    .sparse-switch
        0x1 -> :sswitch_15
        0x2 -> :sswitch_2e
        0x3 -> :sswitch_56
        0x4 -> :sswitch_87
        0x5 -> :sswitch_a2
        0x6 -> :sswitch_ca
        0x7 -> :sswitch_e3
        0x8 -> :sswitch_104
        0x9 -> :sswitch_130
        0xa -> :sswitch_14b
        0xb -> :sswitch_173
        0xc -> :sswitch_18e
        0xd -> :sswitch_1a9
        0xe -> :sswitch_1c2
        0xf -> :sswitch_1dd
        0x10 -> :sswitch_1ff
        0x11 -> :sswitch_21e
        0x12 -> :sswitch_250
        0x13 -> :sswitch_282
        0x14 -> :sswitch_2c3
        0x15 -> :sswitch_2ef
        0x16 -> :sswitch_310
        0x17 -> :sswitch_329
        0x18 -> :sswitch_355
        0x19 -> :sswitch_381
        0x1a -> :sswitch_3a3
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
