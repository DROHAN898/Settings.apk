.class public Lcom/android/settings/gravity/VolteIconPreference;
.super Landroid/preference/ListPreference;
.source "VolteIconPreference.java"


# instance fields
.field context:Landroid/content/Context;

.field entries:[Ljava/lang/CharSequence;

.field summary:Ljava/lang/String;

.field vicon:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/gravity/VolteIconPreference;->vicon:I

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/gravity/VolteIconPreference;->summary:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/android/settings/gravity/VolteIconPreference;->context:Landroid/content/Context;

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 25
    const-string v1, "volte_in_sb"

    const/4 v2, 0x1

    .line 24
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/gravity/VolteIconPreference;->vicon:I

    .line 27
    invoke-virtual {p0}, Lcom/android/settings/gravity/VolteIconPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/gravity/VolteIconPreference;->entries:[Ljava/lang/CharSequence;

    .line 29
    iget-object v0, p0, Lcom/android/settings/gravity/VolteIconPreference;->entries:[Ljava/lang/CharSequence;

    iget v1, p0, Lcom/android/settings/gravity/VolteIconPreference;->vicon:I

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/gravity/VolteIconPreference;->setItemSummary(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/android/settings/gravity/VolteIconPreference;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/settings/gravity/VolteIconPreference;->setItemSummary(Ljava/lang/String;)V

    return-void
.end method

.method private setItemSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/android/settings/gravity/VolteIconPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 49
    new-instance v0, Lcom/android/settings/gravity/VolteIconPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/gravity/VolteIconPreference$1;-><init>(Lcom/android/settings/gravity/VolteIconPreference;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/gravity/VolteIconPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 66
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setValueIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 43
    return-void
.end method
