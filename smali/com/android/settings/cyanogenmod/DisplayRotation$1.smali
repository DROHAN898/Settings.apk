.class Lcom/android/settings/cyanogenmod/DisplayRotation$1;
.super Landroid/database/ContentObserver;
.source "DisplayRotation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cyanogenmod/DisplayRotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cyanogenmod/DisplayRotation;


# direct methods
.method constructor <init>(Lcom/android/settings/cyanogenmod/DisplayRotation;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/cyanogenmod/DisplayRotation;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/DisplayRotation$1;->this$0:Lcom/android/settings/cyanogenmod/DisplayRotation;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/DisplayRotation$1;->this$0:Lcom/android/settings/cyanogenmod/DisplayRotation;

    invoke-static {v0}, Lcom/android/settings/cyanogenmod/DisplayRotation;->-wrap0(Lcom/android/settings/cyanogenmod/DisplayRotation;)V

    .line 58
    return-void
.end method
