.class public abstract Lcyanogenmod/app/ICustomTileListener$Stub;
.super Landroid/os/Binder;
.source "ICustomTileListener.java"

# interfaces
.implements Lcyanogenmod/app/ICustomTileListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/app/ICustomTileListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/app/ICustomTileListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cyanogenmod.app.ICustomTileListener"

.field static final TRANSACTION_onCustomTilePosted:I = 0x2

.field static final TRANSACTION_onCustomTileRemoved:I = 0x3

.field static final TRANSACTION_onListenerConnected:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "cyanogenmod.app.ICustomTileListener"

    invoke-virtual {p0, p0, v0}, Lcyanogenmod/app/ICustomTileListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcyanogenmod/app/ICustomTileListener;
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
    const-string/jumbo v1, "cyanogenmod.app.ICustomTileListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcyanogenmod/app/ICustomTileListener;

    if-eqz v1, :cond_14

    .line 29
    check-cast v0, Lcyanogenmod/app/ICustomTileListener;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcyanogenmod/app/ICustomTileListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcyanogenmod/app/ICustomTileListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 39
    sparse-switch p1, :sswitch_data_3e

    .line 69
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 43
    :sswitch_9
    const-string/jumbo v1, "cyanogenmod.app.ICustomTileListener"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v2

    .line 48
    :sswitch_10
    const-string/jumbo v1, "cyanogenmod.app.ICustomTileListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcyanogenmod/app/ICustomTileListener$Stub;->onListenerConnected()V

    .line 50
    return v2

    .line 54
    :sswitch_1a
    const-string/jumbo v1, "cyanogenmod.app.ICustomTileListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder$Stub;->asInterface(Landroid/os/IBinder;)Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder;

    move-result-object v0

    .line 57
    .local v0, "_arg0":Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder;
    invoke-virtual {p0, v0}, Lcyanogenmod/app/ICustomTileListener$Stub;->onCustomTilePosted(Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder;)V

    .line 58
    return v2

    .line 62
    .end local v0    # "_arg0":Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder;
    :sswitch_2c
    const-string/jumbo v1, "cyanogenmod.app.ICustomTileListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder$Stub;->asInterface(Landroid/os/IBinder;)Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder;

    move-result-object v0

    .line 65
    .restart local v0    # "_arg0":Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder;
    invoke-virtual {p0, v0}, Lcyanogenmod/app/ICustomTileListener$Stub;->onCustomTileRemoved(Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder;)V

    .line 66
    return v2

    .line 39
    :sswitch_data_3e
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_1a
        0x3 -> :sswitch_2c
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
