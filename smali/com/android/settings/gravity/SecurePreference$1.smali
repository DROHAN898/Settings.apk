.class Lcom/android/settings/gravity/SecurePreference$1;
.super Ljava/lang/Object;
.source "SecurePreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/gravity/SecurePreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/gravity/SecurePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/gravity/SecurePreference;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/gravity/SecurePreference$1;->this$0:Lcom/android/settings/gravity/SecurePreference;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 41
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 43
    .local v0, "checked":Z
    if-eqz v0, :cond_0

    .line 44
    iget-object v1, p0, Lcom/android/settings/gravity/SecurePreference$1;->this$0:Lcom/android/settings/gravity/SecurePreference;

    iget-object v1, v1, Lcom/android/settings/gravity/SecurePreference;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 45
    iget-object v2, p0, Lcom/android/settings/gravity/SecurePreference$1;->this$0:Lcom/android/settings/gravity/SecurePreference;

    invoke-virtual {v2}, Lcom/android/settings/gravity/SecurePreference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 50
    :goto_0
    return v4

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/android/settings/gravity/SecurePreference$1;->this$0:Lcom/android/settings/gravity/SecurePreference;

    iget-object v1, v1, Lcom/android/settings/gravity/SecurePreference;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 48
    iget-object v2, p0, Lcom/android/settings/gravity/SecurePreference$1;->this$0:Lcom/android/settings/gravity/SecurePreference;

    invoke-virtual {v2}, Lcom/android/settings/gravity/SecurePreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 47
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
