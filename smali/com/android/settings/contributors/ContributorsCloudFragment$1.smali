.class Lcom/android/settings/contributors/ContributorsCloudFragment$1;
.super Ljava/lang/Object;
.source "ContributorsCloudFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/contributors/ContributorsCloudFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/contributors/ContributorsCloudFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/contributors/ContributorsCloudFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/contributors/ContributorsCloudFragment;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/settings/contributors/ContributorsCloudFragment$1;->this$0:Lcom/android/settings/contributors/ContributorsCloudFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 319
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/contributors/ContributorsCloudFragment$ContributorsDataHolder;

    .line 320
    .local v0, "contributor":Lcom/android/settings/contributors/ContributorsCloudFragment$ContributorsDataHolder;
    iget-object v1, p0, Lcom/android/settings/contributors/ContributorsCloudFragment$1;->this$0:Lcom/android/settings/contributors/ContributorsCloudFragment;

    invoke-static {v1, v0}, Lcom/android/settings/contributors/ContributorsCloudFragment;->-wrap3(Lcom/android/settings/contributors/ContributorsCloudFragment;Lcom/android/settings/contributors/ContributorsCloudFragment$ContributorsDataHolder;)V

    .line 317
    return-void
.end method
