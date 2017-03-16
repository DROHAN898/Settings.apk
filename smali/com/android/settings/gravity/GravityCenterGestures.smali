.class public Lcom/android/settings/gravity/GravityCenterGestures;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "GravityCenterGestures.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x2

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v0, 0x7f08007c

    invoke-virtual {p0, v0}, Lcom/android/settings/gravity/GravityCenterGestures;->addPreferencesFromResource(I)V

    .line 27
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 32
    return-void
.end method
