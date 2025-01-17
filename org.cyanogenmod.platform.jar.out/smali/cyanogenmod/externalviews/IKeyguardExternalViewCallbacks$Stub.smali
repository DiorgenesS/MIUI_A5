.class public abstract Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub;
.super Landroid/os/Binder;
.source "IKeyguardExternalViewCallbacks.java"

# interfaces
.implements Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cyanogenmod.externalviews.IKeyguardExternalViewCallbacks"

.field static final TRANSACTION_collapseNotificationPanel:I = 0x3

.field static final TRANSACTION_onAttachedToWindow:I = 0x5

.field static final TRANSACTION_onDetachedFromWindow:I = 0x6

.field static final TRANSACTION_requestDismiss:I = 0x1

.field static final TRANSACTION_requestDismissAndStartActivity:I = 0x2

.field static final TRANSACTION_setInteractivity:I = 0x4

.field static final TRANSACTION_slideLockscreenIn:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "cyanogenmod.externalviews.IKeyguardExternalViewCallbacks"

    invoke-virtual {p0, p0, v0}, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;
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
    const-string/jumbo v1, "cyanogenmod.externalviews.IKeyguardExternalViewCallbacks"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;

    if-eqz v1, :cond_14

    .line 29
    check-cast v0, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub$Proxy;

    invoke-direct {v1, p0}, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    sparse-switch p1, :sswitch_data_84

    .line 102
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 43
    :sswitch_a
    const-string/jumbo v3, "cyanogenmod.externalviews.IKeyguardExternalViewCallbacks"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v4

    .line 48
    :sswitch_11
    const-string/jumbo v5, "cyanogenmod.externalviews.IKeyguardExternalViewCallbacks"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub;->requestDismiss()Z

    move-result v2

    .line 50
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    if-eqz v2, :cond_21

    move v3, v4

    :cond_21
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    return v4

    .line 56
    .end local v2    # "_result":Z
    :sswitch_25
    const-string/jumbo v5, "cyanogenmod.externalviews.IKeyguardExternalViewCallbacks"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_47

    .line 59
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 64
    :goto_39
    invoke-virtual {p0, v0}, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub;->requestDismissAndStartActivity(Landroid/content/Intent;)Z

    move-result v2

    .line 65
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    if-eqz v2, :cond_43

    move v3, v4

    :cond_43
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    return v4

    .line 62
    .end local v2    # "_result":Z
    :cond_47
    const/4 v0, 0x0

    .local v0, "_arg0":Landroid/content/Intent;
    goto :goto_39

    .line 71
    .end local v0    # "_arg0":Landroid/content/Intent;
    :sswitch_49
    const-string/jumbo v3, "cyanogenmod.externalviews.IKeyguardExternalViewCallbacks"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub;->collapseNotificationPanel()V

    .line 73
    return v4

    .line 77
    :sswitch_53
    const-string/jumbo v3, "cyanogenmod.externalviews.IKeyguardExternalViewCallbacks"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_64

    const/4 v1, 0x1

    .line 80
    .local v1, "_arg0":Z
    :goto_60
    invoke-virtual {p0, v1}, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub;->setInteractivity(Z)V

    .line 81
    return v4

    .line 79
    .end local v1    # "_arg0":Z
    :cond_64
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Z
    goto :goto_60

    .line 85
    .end local v1    # "_arg0":Z
    :sswitch_66
    const-string/jumbo v3, "cyanogenmod.externalviews.IKeyguardExternalViewCallbacks"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub;->onAttachedToWindow()V

    .line 87
    return v4

    .line 91
    :sswitch_70
    const-string/jumbo v3, "cyanogenmod.externalviews.IKeyguardExternalViewCallbacks"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub;->onDetachedFromWindow()V

    .line 93
    return v4

    .line 97
    :sswitch_7a
    const-string/jumbo v3, "cyanogenmod.externalviews.IKeyguardExternalViewCallbacks"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub;->slideLockscreenIn()V

    .line 99
    return v4

    .line 39
    :sswitch_data_84
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_25
        0x3 -> :sswitch_49
        0x4 -> :sswitch_53
        0x5 -> :sswitch_66
        0x6 -> :sswitch_70
        0x7 -> :sswitch_7a
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
