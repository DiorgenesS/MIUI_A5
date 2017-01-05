.class public final Lcyanogenmod/profiles/AirplaneModeSettings;
.super Ljava/lang/Object;
.source "AirplaneModeSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/profiles/AirplaneModeSettings$BooleanState;,
        Lcyanogenmod/profiles/AirplaneModeSettings$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/profiles/AirplaneModeSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDirty:Z

.field private mOverride:Z

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    new-instance v0, Lcyanogenmod/profiles/AirplaneModeSettings$1;

    invoke-direct {v0}, Lcyanogenmod/profiles/AirplaneModeSettings$1;-><init>()V

    .line 51
    sput-object v0, Lcyanogenmod/profiles/AirplaneModeSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, v0, v0}, Lcyanogenmod/profiles/AirplaneModeSettings;-><init>(IZ)V

    .line 85
    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 4
    .param p1, "value"    # I
    .param p2, "override"    # Z

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput p1, p0, Lcyanogenmod/profiles/AirplaneModeSettings;->mValue:I

    .line 97
    iput-boolean p2, p0, Lcyanogenmod/profiles/AirplaneModeSettings;->mOverride:Z

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcyanogenmod/profiles/AirplaneModeSettings;->mDirty:Z

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p0, p1}, Lcyanogenmod/profiles/AirplaneModeSettings;->readFromParcel(Landroid/os/Parcel;)V

    .line 77
    return-void
.end method

.method public static fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Lcyanogenmod/profiles/AirplaneModeSettings;
    .registers 8
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 158
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 159
    .local v1, "event":I
    new-instance v0, Lcyanogenmod/profiles/AirplaneModeSettings;

    invoke-direct {v0}, Lcyanogenmod/profiles/AirplaneModeSettings;-><init>()V

    .line 160
    .local v0, "airplaneModeDescriptor":Lcyanogenmod/profiles/AirplaneModeSettings;
    :goto_a
    const/4 v3, 0x3

    if-eq v1, v3, :cond_2e

    if-eq v1, v5, :cond_2e

    .line 162
    :cond_f
    const/4 v3, 0x2

    if-ne v1, v3, :cond_50

    .line 163
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 165
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcyanogenmod/profiles/AirplaneModeSettings;->mValue:I

    .line 172
    .end local v2    # "name":Ljava/lang/String;
    :cond_29
    :goto_29
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_a

    .line 161
    :cond_2e
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "airplaneModeDescriptor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 174
    return-object v0

    .line 166
    .restart local v2    # "name":Ljava/lang/String;
    :cond_3c
    const-string/jumbo v3, "override"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 167
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcyanogenmod/profiles/AirplaneModeSettings;->mOverride:Z

    goto :goto_29

    .line 169
    .end local v2    # "name":Ljava/lang/String;
    :cond_50
    if-ne v1, v5, :cond_29

    .line 170
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Premature end of file while parsing airplane mode settings"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public getValue()I
    .registers 2

    .prologue
    .line 106
    iget v0, p0, Lcyanogenmod/profiles/AirplaneModeSettings;->mValue:I

    return v0
.end method

.method public getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V
    .registers 4
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 179
    const-string/jumbo v0, "<airplaneModeDescriptor>\n<value>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    iget v0, p0, Lcyanogenmod/profiles/AirplaneModeSettings;->mValue:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    const-string/jumbo v0, "</value>\n<override>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-boolean v0, p0, Lcyanogenmod/profiles/AirplaneModeSettings;->mOverride:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 183
    const-string/jumbo v0, "</override>\n</airplaneModeDescriptor>\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    return-void
.end method

.method public isDirty()Z
    .registers 2

    .prologue
    .line 137
    iget-boolean v0, p0, Lcyanogenmod/profiles/AirplaneModeSettings;->mDirty:Z

    return v0
.end method

.method public isOverride()Z
    .registers 2

    .prologue
    .line 132
    iget-boolean v0, p0, Lcyanogenmod/profiles/AirplaneModeSettings;->mOverride:Z

    return v0
.end method

.method public processOverride(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 142
    invoke-virtual {p0}, Lcyanogenmod/profiles/AirplaneModeSettings;->isOverride()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 144
    const-string/jumbo v5, "airplane_mode_on"

    .line 143
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 145
    .local v0, "current":I
    iget v4, p0, Lcyanogenmod/profiles/AirplaneModeSettings;->mValue:I

    if-eq v0, v4, :cond_38

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 147
    const-string/jumbo v5, "airplane_mode_on"

    iget v6, p0, Lcyanogenmod/profiles/AirplaneModeSettings;->mValue:I

    .line 146
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 148
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "state"

    iget v5, p0, Lcyanogenmod/profiles/AirplaneModeSettings;->mValue:I

    if-ne v5, v2, :cond_39

    :goto_32
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 150
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 141
    .end local v0    # "current":I
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_38
    return-void

    .restart local v0    # "current":I
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_39
    move v2, v3

    .line 149
    goto :goto_32
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 209
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 210
    .local v0, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v1

    .line 215
    .local v1, "parcelableVersion":I
    const/4 v2, 0x2

    if-lt v1, v2, :cond_24

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_28

    move v2, v3

    :goto_14
    iput-boolean v2, p0, Lcyanogenmod/profiles/AirplaneModeSettings;->mOverride:Z

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcyanogenmod/profiles/AirplaneModeSettings;->mValue:I

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2a

    :goto_22
    iput-boolean v3, p0, Lcyanogenmod/profiles/AirplaneModeSettings;->mDirty:Z

    .line 222
    :cond_24
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    .line 207
    return-void

    :cond_28
    move v2, v4

    .line 216
    goto :goto_14

    :cond_2a
    move v3, v4

    .line 218
    goto :goto_22
.end method

.method public setOverride(Z)V
    .registers 3
    .param p1, "override"    # Z

    .prologue
    .line 123
    iput-boolean p1, p0, Lcyanogenmod/profiles/AirplaneModeSettings;->mOverride:Z

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/profiles/AirplaneModeSettings;->mDirty:Z

    .line 122
    return-void
.end method

.method public setValue(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 114
    iput p1, p0, Lcyanogenmod/profiles/AirplaneModeSettings;->mValue:I

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/profiles/AirplaneModeSettings;->mDirty:Z

    .line 113
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 195
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 198
    .local v0, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    iget-boolean v1, p0, Lcyanogenmod/profiles/AirplaneModeSettings;->mOverride:Z

    if-eqz v1, :cond_1e

    move v1, v2

    :goto_b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget v1, p0, Lcyanogenmod/profiles/AirplaneModeSettings;->mValue:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget-boolean v1, p0, Lcyanogenmod/profiles/AirplaneModeSettings;->mDirty:Z

    if-eqz v1, :cond_20

    :goto_17
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    .line 193
    return-void

    :cond_1e
    move v1, v3

    .line 198
    goto :goto_b

    :cond_20
    move v2, v3

    .line 200
    goto :goto_17
.end method
