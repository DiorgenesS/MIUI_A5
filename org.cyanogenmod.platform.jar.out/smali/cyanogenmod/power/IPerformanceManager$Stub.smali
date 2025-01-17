.class public abstract Lcyanogenmod/power/IPerformanceManager$Stub;
.super Landroid/os/Binder;
.source "IPerformanceManager.java"

# interfaces
.implements Lcyanogenmod/power/IPerformanceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/power/IPerformanceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/power/IPerformanceManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cyanogenmod.power.IPerformanceManager"

.field static final TRANSACTION_cpuBoost_0:I = 0x1

.field static final TRANSACTION_getNumberOfProfiles:I = 0x4

.field static final TRANSACTION_getPowerProfile:I = 0x3

.field static final TRANSACTION_getProfileHasAppProfiles:I = 0x5

.field static final TRANSACTION_setPowerProfile:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "cyanogenmod.power.IPerformanceManager"

    invoke-virtual {p0, p0, v0}, Lcyanogenmod/power/IPerformanceManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcyanogenmod/power/IPerformanceManager;
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
    const-string/jumbo v1, "cyanogenmod.power.IPerformanceManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcyanogenmod/power/IPerformanceManager;

    if-eqz v1, :cond_14

    .line 29
    check-cast v0, Lcyanogenmod/power/IPerformanceManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcyanogenmod/power/IPerformanceManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcyanogenmod/power/IPerformanceManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 11
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
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_72

    .line 91
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 43
    :sswitch_a
    const-string/jumbo v3, "cyanogenmod.power.IPerformanceManager"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v4

    .line 48
    :sswitch_11
    const-string/jumbo v3, "cyanogenmod.power.IPerformanceManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 51
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcyanogenmod/power/IPerformanceManager$Stub;->cpuBoost(I)V

    .line 52
    return v4

    .line 56
    .end local v0    # "_arg0":I
    :sswitch_1f
    const-string/jumbo v5, "cyanogenmod.power.IPerformanceManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 59
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcyanogenmod/power/IPerformanceManager$Stub;->setPowerProfile(I)Z

    move-result v2

    .line 60
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v2, :cond_33

    move v3, v4

    :cond_33
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    return v4

    .line 66
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Z
    :sswitch_37
    const-string/jumbo v3, "cyanogenmod.power.IPerformanceManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcyanogenmod/power/IPerformanceManager$Stub;->getPowerProfile()I

    move-result v1

    .line 68
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    return v4

    .line 74
    .end local v1    # "_result":I
    :sswitch_48
    const-string/jumbo v3, "cyanogenmod.power.IPerformanceManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcyanogenmod/power/IPerformanceManager$Stub;->getNumberOfProfiles()I

    move-result v1

    .line 76
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    return v4

    .line 82
    .end local v1    # "_result":I
    :sswitch_59
    const-string/jumbo v5, "cyanogenmod.power.IPerformanceManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 85
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcyanogenmod/power/IPerformanceManager$Stub;->getProfileHasAppProfiles(I)Z

    move-result v2

    .line 86
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v2, :cond_6d

    move v3, v4

    :cond_6d
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    return v4

    .line 39
    nop

    :sswitch_data_72
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_1f
        0x3 -> :sswitch_37
        0x4 -> :sswitch_48
        0x5 -> :sswitch_59
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
