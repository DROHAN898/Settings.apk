.class Lcom/android/settings/DisplaySettings$4;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DisplaySettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/DisplaySettings;

    .prologue
    .line 554
    iput-object p1, p0, Lcom/android/settings/DisplaySettings$4;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$4;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->-get0(Lcom/android/settings/DisplaySettings;)Lcom/android/settings/FontDialogPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/FontDialogPreference;->click()V

    .line 555
    return-void
.end method
