.class Lorg/cyanogenmod/internal/themes/IIconCacheManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IIconCacheManager.java"

# interfaces
.implements Lorg/cyanogenmod/internal/themes/IIconCacheManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/internal/themes/IIconCacheManager$Stub;
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
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/cyanogenmod/internal/themes/IIconCacheManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 69
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lorg/cyanogenmod/internal/themes/IIconCacheManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public cacheComposedIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .registers 9
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 84
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 87
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string/jumbo v3, "org.cyanogenmod.internal.themes.IIconCacheManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 88
    if-eqz p1, :cond_33

    .line 89
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 95
    :goto_18
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v3, p0, Lorg/cyanogenmod/internal/themes/IIconCacheManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 97
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 98
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_38

    move-result v3

    if-eqz v3, :cond_40

    const/4 v2, 0x1

    .line 101
    .local v2, "_result":Z
    :goto_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 102
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 104
    return v2

    .line 93
    .end local v2    # "_result":Z
    :cond_33
    const/4 v3, 0x0

    :try_start_34
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    goto :goto_18

    .line 100
    :catchall_38
    move-exception v3

    .line 101
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 102
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 100
    throw v3

    .line 98
    :cond_40
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_2c
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    const-string/jumbo v0, "org.cyanogenmod.internal.themes.IIconCacheManager"

    return-object v0
.end method
