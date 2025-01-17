.class public Lcyanogenmod/app/CustomTile;
.super Ljava/lang/Object;
.source "CustomTile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/app/CustomTile$ExpandedStyle;,
        Lcyanogenmod/app/CustomTile$GridExpandedStyle;,
        Lcyanogenmod/app/CustomTile$ListExpandedStyle;,
        Lcyanogenmod/app/CustomTile$RemoteExpandedStyle;,
        Lcyanogenmod/app/CustomTile$ExpandedItem;,
        Lcyanogenmod/app/CustomTile$ExpandedGridItem;,
        Lcyanogenmod/app/CustomTile$ExpandedListItem;,
        Lcyanogenmod/app/CustomTile$Builder;,
        Lcyanogenmod/app/CustomTile$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/app/CustomTile;",
            ">;"
        }
    .end annotation
.end field

.field public static final PSEUDO_GRID_ITEM_MAX_COUNT:I = 0x9


# instance fields
.field public collapsePanel:Z

.field public contentDescription:Ljava/lang/String;

.field public deleteIntent:Landroid/app/PendingIntent;

.field public expandedStyle:Lcyanogenmod/app/CustomTile$ExpandedStyle;

.field public icon:I

.field public label:Ljava/lang/String;

.field public onClick:Landroid/app/PendingIntent;

.field public onClickUri:Landroid/net/Uri;

.field public onLongClick:Landroid/app/PendingIntent;

.field public onSettingsClick:Landroid/content/Intent;

.field public remoteIcon:Landroid/graphics/Bitmap;

.field private resourcesPackageName:Ljava/lang/String;

.field public sensitiveData:Z


# direct methods
.method static synthetic -set0(Lcyanogenmod/app/CustomTile;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcyanogenmod/app/CustomTile;->resourcesPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 876
    new-instance v0, Lcyanogenmod/app/CustomTile$1;

    invoke-direct {v0}, Lcyanogenmod/app/CustomTile$1;-><init>()V

    .line 875
    sput-object v0, Lcyanogenmod/app/CustomTile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcyanogenmod/app/CustomTile;->resourcesPackageName:Ljava/lang/String;

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/CustomTile;->collapsePanel:Z

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcyanogenmod/app/CustomTile;->sensitiveData:Z

    .line 189
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcyanogenmod/app/CustomTile;->resourcesPackageName:Ljava/lang/String;

    .line 121
    iput-boolean v3, p0, Lcyanogenmod/app/CustomTile;->collapsePanel:Z

    .line 128
    iput-boolean v4, p0, Lcyanogenmod/app/CustomTile;->sensitiveData:Z

    .line 135
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 136
    .local v0, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v1

    .line 141
    .local v1, "parcelableVersion":I
    if-lt v1, v3, :cond_76

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_28

    .line 143
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    iput-object v2, p0, Lcyanogenmod/app/CustomTile;->onClick:Landroid/app/PendingIntent;

    .line 145
    :cond_28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_38

    .line 146
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    iput-object v2, p0, Lcyanogenmod/app/CustomTile;->onSettingsClick:Landroid/content/Intent;

    .line 148
    :cond_38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_48

    .line 149
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcyanogenmod/app/CustomTile;->onClickUri:Landroid/net/Uri;

    .line 151
    :cond_48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_54

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcyanogenmod/app/CustomTile;->label:Ljava/lang/String;

    .line 154
    :cond_54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_60

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcyanogenmod/app/CustomTile;->contentDescription:Ljava/lang/String;

    .line 157
    :cond_60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_70

    .line 158
    sget-object v2, Lcyanogenmod/app/CustomTile$ExpandedStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcyanogenmod/app/CustomTile$ExpandedStyle;

    iput-object v2, p0, Lcyanogenmod/app/CustomTile;->expandedStyle:Lcyanogenmod/app/CustomTile$ExpandedStyle;

    .line 160
    :cond_70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcyanogenmod/app/CustomTile;->icon:I

    .line 163
    :cond_76
    const/4 v2, 0x2

    if-lt v1, v2, :cond_b0

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcyanogenmod/app/CustomTile;->resourcesPackageName:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_c7

    move v2, v3

    :goto_86
    iput-boolean v2, p0, Lcyanogenmod/app/CustomTile;->collapsePanel:Z

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_98

    .line 167
    sget-object v2, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcyanogenmod/app/CustomTile;->remoteIcon:Landroid/graphics/Bitmap;

    .line 169
    :cond_98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a8

    .line 170
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    iput-object v2, p0, Lcyanogenmod/app/CustomTile;->deleteIntent:Landroid/app/PendingIntent;

    .line 172
    :cond_a8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_c9

    :goto_ae
    iput-boolean v3, p0, Lcyanogenmod/app/CustomTile;->sensitiveData:Z

    .line 175
    :cond_b0
    const/4 v2, 0x4

    if-lt v1, v2, :cond_c3

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c3

    .line 177
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    iput-object v2, p0, Lcyanogenmod/app/CustomTile;->onLongClick:Landroid/app/PendingIntent;

    .line 182
    :cond_c3
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    .line 133
    return-void

    :cond_c7
    move v2, v4

    .line 165
    goto :goto_86

    :cond_c9
    move v3, v4

    .line 172
    goto :goto_ae
.end method


# virtual methods
.method public clone()Lcyanogenmod/app/CustomTile;
    .registers 2

    .prologue
    .line 201
    new-instance v0, Lcyanogenmod/app/CustomTile;

    invoke-direct {v0}, Lcyanogenmod/app/CustomTile;-><init>()V

    .line 202
    .local v0, "that":Lcyanogenmod/app/CustomTile;
    invoke-virtual {p0, v0}, Lcyanogenmod/app/CustomTile;->cloneInto(Lcyanogenmod/app/CustomTile;)V

    .line 203
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-virtual {p0}, Lcyanogenmod/app/CustomTile;->clone()Lcyanogenmod/app/CustomTile;

    move-result-object v0

    return-object v0
.end method

.method public cloneInto(Lcyanogenmod/app/CustomTile;)V
    .registers 3
    .param p1, "that"    # Lcyanogenmod/app/CustomTile;

    .prologue
    .line 250
    iget-object v0, p0, Lcyanogenmod/app/CustomTile;->resourcesPackageName:Ljava/lang/String;

    iput-object v0, p1, Lcyanogenmod/app/CustomTile;->resourcesPackageName:Ljava/lang/String;

    .line 251
    iget-object v0, p0, Lcyanogenmod/app/CustomTile;->onClick:Landroid/app/PendingIntent;

    iput-object v0, p1, Lcyanogenmod/app/CustomTile;->onClick:Landroid/app/PendingIntent;

    .line 252
    iget-object v0, p0, Lcyanogenmod/app/CustomTile;->onLongClick:Landroid/app/PendingIntent;

    iput-object v0, p1, Lcyanogenmod/app/CustomTile;->onLongClick:Landroid/app/PendingIntent;

    .line 253
    iget-object v0, p0, Lcyanogenmod/app/CustomTile;->onSettingsClick:Landroid/content/Intent;

    iput-object v0, p1, Lcyanogenmod/app/CustomTile;->onSettingsClick:Landroid/content/Intent;

    .line 254
    iget-object v0, p0, Lcyanogenmod/app/CustomTile;->onClickUri:Landroid/net/Uri;

    iput-object v0, p1, Lcyanogenmod/app/CustomTile;->onClickUri:Landroid/net/Uri;

    .line 255
    iget-object v0, p0, Lcyanogenmod/app/CustomTile;->label:Ljava/lang/String;

    iput-object v0, p1, Lcyanogenmod/app/CustomTile;->label:Ljava/lang/String;

    .line 256
    iget-object v0, p0, Lcyanogenmod/app/CustomTile;->contentDescription:Ljava/lang/String;

    iput-object v0, p1, Lcyanogenmod/app/CustomTile;->contentDescription:Ljava/lang/String;

    .line 257
    iget-object v0, p0, Lcyanogenmod/app/CustomTile;->expandedStyle:Lcyanogenmod/app/CustomTile$ExpandedStyle;

    iput-object v0, p1, Lcyanogenmod/app/CustomTile;->expandedStyle:Lcyanogenmod/app/CustomTile$ExpandedStyle;

    .line 258
    iget v0, p0, Lcyanogenmod/app/CustomTile;->icon:I

    iput v0, p1, Lcyanogenmod/app/CustomTile;->icon:I

    .line 259
    iget-boolean v0, p0, Lcyanogenmod/app/CustomTile;->collapsePanel:Z

    iput-boolean v0, p1, Lcyanogenmod/app/CustomTile;->collapsePanel:Z

    .line 260
    iget-object v0, p0, Lcyanogenmod/app/CustomTile;->remoteIcon:Landroid/graphics/Bitmap;

    iput-object v0, p1, Lcyanogenmod/app/CustomTile;->remoteIcon:Landroid/graphics/Bitmap;

    .line 261
    iget-object v0, p0, Lcyanogenmod/app/CustomTile;->deleteIntent:Landroid/app/PendingIntent;

    iput-object v0, p1, Lcyanogenmod/app/CustomTile;->deleteIntent:Landroid/app/PendingIntent;

    .line 262
    iget-boolean v0, p0, Lcyanogenmod/app/CustomTile;->sensitiveData:Z

    iput-boolean v0, p1, Lcyanogenmod/app/CustomTile;->sensitiveData:Z

    .line 249
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method public getResourcesPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcyanogenmod/app/CustomTile;->resourcesPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .local v1, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "NEW_LINE":Ljava/lang/String;
    iget-object v2, p0, Lcyanogenmod/app/CustomTile;->onClickUri:Landroid/net/Uri;

    if-eqz v2, :cond_24

    .line 211
    const-string/jumbo v2, "onClickUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->onClickUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    :cond_24
    iget-object v2, p0, Lcyanogenmod/app/CustomTile;->onClick:Landroid/app/PendingIntent;

    if-eqz v2, :cond_3c

    .line 214
    const-string/jumbo v2, "onClick="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->onClick:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :cond_3c
    iget-object v2, p0, Lcyanogenmod/app/CustomTile;->onLongClick:Landroid/app/PendingIntent;

    if-eqz v2, :cond_54

    .line 217
    const-string/jumbo v2, "onLongClick="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->onLongClick:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    :cond_54
    iget-object v2, p0, Lcyanogenmod/app/CustomTile;->onSettingsClick:Landroid/content/Intent;

    if-eqz v2, :cond_6c

    .line 220
    const-string/jumbo v2, "onSettingsClick="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->onSettingsClick:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    :cond_6c
    iget-object v2, p0, Lcyanogenmod/app/CustomTile;->label:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_84

    .line 223
    const-string/jumbo v2, "label="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    :cond_84
    iget-object v2, p0, Lcyanogenmod/app/CustomTile;->contentDescription:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9c

    .line 226
    const-string/jumbo v2, "contentDescription="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->contentDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    :cond_9c
    iget-object v2, p0, Lcyanogenmod/app/CustomTile;->expandedStyle:Lcyanogenmod/app/CustomTile$ExpandedStyle;

    if-eqz v2, :cond_b0

    .line 229
    const-string/jumbo v2, "expandedStyle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->expandedStyle:Lcyanogenmod/app/CustomTile$ExpandedStyle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    :cond_b0
    const-string/jumbo v2, "icon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcyanogenmod/app/CustomTile;->icon:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    const-string/jumbo v2, "resourcesPackageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->resourcesPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const-string/jumbo v2, "collapsePanel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcyanogenmod/app/CustomTile;->collapsePanel:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    iget-object v2, p0, Lcyanogenmod/app/CustomTile;->remoteIcon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_f8

    .line 236
    const-string/jumbo v2, "remoteIcon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->remoteIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getGenerationId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    :cond_f8
    iget-object v2, p0, Lcyanogenmod/app/CustomTile;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_110

    .line 239
    const-string/jumbo v2, "deleteIntent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    :cond_110
    const-string/jumbo v2, "sensitiveData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcyanogenmod/app/CustomTile;->sensitiveData:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 273
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 276
    .local v0, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    iget-object v1, p0, Lcyanogenmod/app/CustomTile;->onClick:Landroid/app/PendingIntent;

    if-eqz v1, :cond_90

    .line 277
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    iget-object v1, p0, Lcyanogenmod/app/CustomTile;->onClick:Landroid/app/PendingIntent;

    invoke-virtual {v1, p1, v3}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 282
    :goto_12
    iget-object v1, p0, Lcyanogenmod/app/CustomTile;->onSettingsClick:Landroid/content/Intent;

    if-eqz v1, :cond_95

    .line 283
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    iget-object v1, p0, Lcyanogenmod/app/CustomTile;->onSettingsClick:Landroid/content/Intent;

    invoke-virtual {v1, p1, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 288
    :goto_1e
    iget-object v1, p0, Lcyanogenmod/app/CustomTile;->onClickUri:Landroid/net/Uri;

    if-eqz v1, :cond_99

    .line 289
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    iget-object v1, p0, Lcyanogenmod/app/CustomTile;->onClickUri:Landroid/net/Uri;

    invoke-virtual {v1, p1, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 294
    :goto_2a
    iget-object v1, p0, Lcyanogenmod/app/CustomTile;->label:Ljava/lang/String;

    if-eqz v1, :cond_9d

    .line 295
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    iget-object v1, p0, Lcyanogenmod/app/CustomTile;->label:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 300
    :goto_36
    iget-object v1, p0, Lcyanogenmod/app/CustomTile;->contentDescription:Ljava/lang/String;

    if-eqz v1, :cond_a1

    .line 301
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    iget-object v1, p0, Lcyanogenmod/app/CustomTile;->contentDescription:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 306
    :goto_42
    iget-object v1, p0, Lcyanogenmod/app/CustomTile;->expandedStyle:Lcyanogenmod/app/CustomTile$ExpandedStyle;

    if-eqz v1, :cond_a5

    .line 307
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    iget-object v1, p0, Lcyanogenmod/app/CustomTile;->expandedStyle:Lcyanogenmod/app/CustomTile$ExpandedStyle;

    invoke-virtual {v1, p1, v3}, Lcyanogenmod/app/CustomTile$ExpandedStyle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 312
    :goto_4e
    iget v1, p0, Lcyanogenmod/app/CustomTile;->icon:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    iget-object v1, p0, Lcyanogenmod/app/CustomTile;->resourcesPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 316
    iget-boolean v1, p0, Lcyanogenmod/app/CustomTile;->collapsePanel:Z

    if-eqz v1, :cond_a9

    move v1, v2

    :goto_5d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    iget-object v1, p0, Lcyanogenmod/app/CustomTile;->remoteIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_ab

    .line 318
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    iget-object v1, p0, Lcyanogenmod/app/CustomTile;->remoteIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1, v3}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 323
    :goto_6c
    iget-object v1, p0, Lcyanogenmod/app/CustomTile;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_af

    .line 324
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    iget-object v1, p0, Lcyanogenmod/app/CustomTile;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, p1, v3}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 329
    :goto_78
    iget-boolean v1, p0, Lcyanogenmod/app/CustomTile;->sensitiveData:Z

    if-eqz v1, :cond_b3

    move v1, v2

    :goto_7d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    iget-object v1, p0, Lcyanogenmod/app/CustomTile;->onLongClick:Landroid/app/PendingIntent;

    if-eqz v1, :cond_b5

    .line 333
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    iget-object v1, p0, Lcyanogenmod/app/CustomTile;->onLongClick:Landroid/app/PendingIntent;

    invoke-virtual {v1, p1, v3}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 340
    :goto_8c
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    .line 271
    return-void

    .line 280
    :cond_90
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_12

    .line 286
    :cond_95
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1e

    .line 292
    :cond_99
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2a

    .line 298
    :cond_9d
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_36

    .line 304
    :cond_a1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_42

    .line 310
    :cond_a5
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4e

    :cond_a9
    move v1, v3

    .line 316
    goto :goto_5d

    .line 321
    :cond_ab
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6c

    .line 327
    :cond_af
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_78

    :cond_b3
    move v1, v3

    .line 329
    goto :goto_7d

    .line 336
    :cond_b5
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8c
.end method
