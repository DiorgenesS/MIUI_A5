.class public abstract Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder$Stub;
.super Landroid/os/Binder;
.source "IStatusBarCustomTileHolder.java"

# interfaces
.implements Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.cyanogenmod.internal.statusbar.IStatusBarCustomTileHolder"

.field static final TRANSACTION_get:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "org.cyanogenmod.internal.statusbar.IStatusBarCustomTileHolder"

    invoke-virtual {p0, p0, v0}, Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder;
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
    const-string/jumbo v1, "org.cyanogenmod.internal.statusbar.IStatusBarCustomTileHolder"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder;

    if-eqz v1, :cond_14

    .line 29
    check-cast v0, Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder$Stub$Proxy;

    invoke-direct {v1, p0}, Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    sparse-switch p1, :sswitch_data_2c

    .line 61
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 43
    :sswitch_9
    const-string/jumbo v1, "org.cyanogenmod.internal.statusbar.IStatusBarCustomTileHolder"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v2

    .line 48
    :sswitch_10
    const-string/jumbo v1, "org.cyanogenmod.internal.statusbar.IStatusBarCustomTileHolder"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder$Stub;->get()Lcyanogenmod/app/StatusBarPanelCustomTile;

    move-result-object v0

    .line 50
    .local v0, "_result":Lcyanogenmod/app/StatusBarPanelCustomTile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    if-eqz v0, :cond_26

    .line 52
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    invoke-virtual {v0, p3, v2}, Lcyanogenmod/app/StatusBarPanelCustomTile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 58
    :goto_25
    return v2

    .line 56
    :cond_26
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_25

    .line 39
    nop

    :sswitch_data_2c
    .sparse-switch
        0x1 -> :sswitch_10
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
