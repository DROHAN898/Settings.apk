.class Lcom/android/settings/blacklist/EntryEditDialogFragment$2;
.super Ljava/lang/Object;
.source "EntryEditDialogFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/blacklist/EntryEditDialogFragment;->populateCountryCodes(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/blacklist/EntryEditDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/blacklist/EntryEditDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/blacklist/EntryEditDialogFragment;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/settings/blacklist/EntryEditDialogFragment$2;->this$0:Lcom/android/settings/blacklist/EntryEditDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 182
    check-cast p1, Ljava/lang/String;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Ljava/lang/String;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/blacklist/EntryEditDialogFragment$2;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "lhs"    # Ljava/lang/String;
    .param p2, "rhs"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
