.class Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder$Stub$Proxy;
.super Ljava/lang/Object;
.source "IStatusBarCustomTileHolder.java"

# interfaces
.implements Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 66
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public get()Lcyanogenmod/app/StatusBarPanelCustomTile;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 82
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 85
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string/jumbo v3, "org.cyanogenmod.internal.statusbar.IStatusBarCustomTileHolder"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 86
    iget-object v3, p0, Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 87
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 88
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2d

    .line 89
    sget-object v3, Lcyanogenmod/app/StatusBarPanelCustomTile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcyanogenmod/app/StatusBarPanelCustomTile;
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    .line 96
    :goto_26
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 97
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 99
    return-object v2

    .line 92
    :cond_2d
    const/4 v2, 0x0

    .local v2, "_result":Lcyanogenmod/app/StatusBarPanelCustomTile;
    goto :goto_26

    .line 95
    .end local v2    # "_result":Lcyanogenmod/app/StatusBarPanelCustomTile;
    :catchall_2f
    move-exception v3

    .line 96
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 97
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 95
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    const-string/jumbo v0, "org.cyanogenmod.internal.statusbar.IStatusBarCustomTileHolder"

    return-object v0
.end method
