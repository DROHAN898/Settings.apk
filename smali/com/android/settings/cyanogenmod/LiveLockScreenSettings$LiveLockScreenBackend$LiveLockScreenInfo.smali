.class public Lcom/android/settings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;
.super Ljava/lang/Object;
.source "LiveLockScreenSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiveLockScreenInfo"
.end annotation


# instance fields
.field caption:Ljava/lang/CharSequence;

.field public componentName:Landroid/content/ComponentName;

.field icon:Landroid/graphics/drawable/Drawable;

.field isActive:Z

.field public settingsComponentName:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 304
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 305
    iget-boolean v1, p0, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;->isActive:Z

    if-eqz v1, :cond_0

    .line 306
    const-string/jumbo v1, ",active"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    :cond_0
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 309
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;->settingsComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    .line 310
    const-string/jumbo v1, "settings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;->settingsComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 312
    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
