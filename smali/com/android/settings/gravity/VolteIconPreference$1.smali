.class Lcom/android/settings/gravity/VolteIconPreference$1;
.super Ljava/lang/Object;
.source "VolteIconPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/gravity/VolteIconPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/gravity/VolteIconPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/gravity/VolteIconPreference;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/gravity/VolteIconPreference$1;->this$0:Lcom/android/settings/gravity/VolteIconPreference;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 54
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "textValue":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 58
    .local v0, "item":I
    iget-object v2, p0, Lcom/android/settings/gravity/VolteIconPreference$1;->this$0:Lcom/android/settings/gravity/VolteIconPreference;

    iget-object v2, v2, Lcom/android/settings/gravity/VolteIconPreference;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 59
    const-string v3, "volte_in_sb"

    .line 58
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 61
    iget-object v2, p0, Lcom/android/settings/gravity/VolteIconPreference$1;->this$0:Lcom/android/settings/gravity/VolteIconPreference;

    iget-object v3, p0, Lcom/android/settings/gravity/VolteIconPreference$1;->this$0:Lcom/android/settings/gravity/VolteIconPreference;

    iget-object v3, v3, Lcom/android/settings/gravity/VolteIconPreference;->entries:[Ljava/lang/CharSequence;

    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/settings/gravity/VolteIconPreference;->setItemSummary(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/settings/gravity/VolteIconPreference;->access$0(Lcom/android/settings/gravity/VolteIconPreference;Ljava/lang/String;)V

    .line 62
    const/4 v2, 0x1

    return v2
.end method
