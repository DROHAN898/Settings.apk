.class Lcom/android/settings/wifi/AccessPointPreference$1;
.super Ljava/lang/Object;
.source "AccessPointPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/AccessPointPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/AccessPointPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/AccessPointPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wifi/AccessPointPreference;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointPreference$1;->this$0:Lcom/android/settings/wifi/AccessPointPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointPreference$1;->this$0:Lcom/android/settings/wifi/AccessPointPreference;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPointPreference;->notifyChanged()V

    .line 221
    return-void
.end method
