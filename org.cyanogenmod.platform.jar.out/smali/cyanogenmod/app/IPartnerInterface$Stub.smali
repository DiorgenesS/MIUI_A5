.class public abstract Lcyanogenmod/app/IPartnerInterface$Stub;
.super Landroid/os/Binder;
.source "IPartnerInterface.java"

# interfaces
.implements Lcyanogenmod/app/IPartnerInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/app/IPartnerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/app/IPartnerInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cyanogenmod.app.IPartnerInterface"

.field static final TRANSACTION_getCurrentHotwordPackageName:I = 0x6

.field static final TRANSACTION_reboot:I = 0x5

.field static final TRANSACTION_setAirplaneModeEnabled_0:I = 0x1

.field static final TRANSACTION_setMobileDataEnabled:I = 0x2

.field static final TRANSACTION_setZenMode:I = 0x3

.field static final TRANSACTION_setZenModeWithDuration:I = 0x7

.field static final TRANSACTION_shutdown:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "cyanogenmod.app.IPartnerInterface"

    invoke-virtual {p0, p0, v0}, Lcyanogenmod/app/IPartnerInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcyanogenmod/app/IPartnerInterface;
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
    const-string/jumbo v1, "cyanogenmod.app.IPartnerInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcyanogenmod/app/IPartnerInterface;

    if-eqz v1, :cond_14

    .line 29
    check-cast v0, Lcyanogenmod/app/IPartnerInterface;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcyanogenmod/app/IPartnerInterface$Stub$Proxy;

    invoke-direct {v1, p0}, Lcyanogenmod/app/IPartnerInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 14
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
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_9c

    .line 109
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 43
    :sswitch_a
    const-string/jumbo v6, "cyanogenmod.app.IPartnerInterface"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v7

    .line 48
    :sswitch_11
    const-string/jumbo v6, "cyanogenmod.app.IPartnerInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_25

    const/4 v1, 0x1

    .line 51
    .local v1, "_arg0":Z
    :goto_1e
    invoke-virtual {p0, v1}, Lcyanogenmod/app/IPartnerInterface$Stub;->setAirplaneModeEnabled(Z)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    return v7

    .line 50
    .end local v1    # "_arg0":Z
    :cond_25
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Z
    goto :goto_1e

    .line 57
    .end local v1    # "_arg0":Z
    :sswitch_27
    const-string/jumbo v6, "cyanogenmod.app.IPartnerInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3b

    const/4 v1, 0x1

    .line 60
    .restart local v1    # "_arg0":Z
    :goto_34
    invoke-virtual {p0, v1}, Lcyanogenmod/app/IPartnerInterface$Stub;->setMobileDataEnabled(Z)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    return v7

    .line 59
    .end local v1    # "_arg0":Z
    :cond_3b
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Z
    goto :goto_34

    .line 66
    .end local v1    # "_arg0":Z
    :sswitch_3d
    const-string/jumbo v8, "cyanogenmod.app.IPartnerInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 69
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcyanogenmod/app/IPartnerInterface$Stub;->setZenMode(I)Z

    move-result v5

    .line 70
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v5, :cond_51

    move v6, v7

    :cond_51
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    return v7

    .line 76
    .end local v0    # "_arg0":I
    .end local v5    # "_result":Z
    :sswitch_55
    const-string/jumbo v6, "cyanogenmod.app.IPartnerInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcyanogenmod/app/IPartnerInterface$Stub;->shutdown()V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    return v7

    .line 83
    :sswitch_62
    const-string/jumbo v6, "cyanogenmod.app.IPartnerInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcyanogenmod/app/IPartnerInterface$Stub;->reboot()V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    return v7

    .line 90
    :sswitch_6f
    const-string/jumbo v6, "cyanogenmod.app.IPartnerInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcyanogenmod/app/IPartnerInterface$Stub;->getCurrentHotwordPackageName()Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    return v7

    .line 98
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_80
    const-string/jumbo v8, "cyanogenmod.app.IPartnerInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 102
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 103
    .local v2, "_arg1":J
    invoke-virtual {p0, v0, v2, v3}, Lcyanogenmod/app/IPartnerInterface$Stub;->setZenModeWithDuration(IJ)Z

    move-result v5

    .line 104
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    if-eqz v5, :cond_98

    move v6, v7

    :cond_98
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    return v7

    .line 39
    :sswitch_data_9c
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_27
        0x3 -> :sswitch_3d
        0x4 -> :sswitch_55
        0x5 -> :sswitch_62
        0x6 -> :sswitch_6f
        0x7 -> :sswitch_80
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
