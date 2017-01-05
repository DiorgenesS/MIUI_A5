.class public abstract Lcyanogenmod/hardware/IThermalListenerCallback$Stub;
.super Landroid/os/Binder;
.source "IThermalListenerCallback.java"

# interfaces
.implements Lcyanogenmod/hardware/IThermalListenerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/hardware/IThermalListenerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/hardware/IThermalListenerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cyanogenmod.hardware.IThermalListenerCallback"

.field static final TRANSACTION_onThermalChanged_0:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "cyanogenmod.hardware.IThermalListenerCallback"

    invoke-virtual {p0, p0, v0}, Lcyanogenmod/hardware/IThermalListenerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcyanogenmod/hardware/IThermalListenerCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 23
    if-nez p0, :cond_4

    .line 24
    return-object v1

    .line 26
    :cond_4
    const-string/jumbo v1, "cyanogenmod.hardware.IThermalListenerCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcyanogenmod/hardware/IThermalListenerCallback;

    if-eqz v1, :cond_14

    .line 28
    check-cast v0, Lcyanogenmod/hardware/IThermalListenerCallback;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcyanogenmod/hardware/IThermalListenerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcyanogenmod/hardware/IThermalListenerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
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
    const/4 v2, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_22

    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 42
    :sswitch_9
    const-string/jumbo v1, "cyanogenmod.hardware.IThermalListenerCallback"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return v2

    .line 47
    :sswitch_10
    const-string/jumbo v1, "cyanogenmod.hardware.IThermalListenerCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 50
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcyanogenmod/hardware/IThermalListenerCallback$Stub;->onThermalChanged(I)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    return v2

    .line 38
    nop

    :sswitch_data_22
    .sparse-switch
        0x1 -> :sswitch_10
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
