.class Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;
.super Ljava/lang/Object;
.source "LockPatternActivity.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/LockPatternActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockPatternListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/LockPatternActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings/applications/LockPatternActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/applications/LockPatternActivity;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/applications/LockPatternActivity;Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/applications/LockPatternActivity;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;-><init>(Lcom/android/settings/applications/LockPatternActivity;)V

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 403
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    return-void
.end method

.method public onPatternCleared()V
    .locals 0

    .prologue
    .line 329
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const v2, 0x7f0c086e

    const/4 v7, 0x4

    const-wide/16 v4, 0x7d0

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 334
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-boolean v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mCreate:Z

    if-eqz v0, :cond_4

    .line 335
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v7, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 338
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    .line 337
    const v3, 0x7f0c0875

    .line 336
    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 341
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v1, v1, Lcom/android/settings/applications/LockPatternActivity;->mCancelPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 342
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 343
    const v2, 0x7f0c087b

    .line 342
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iput-boolean v6, v0, Lcom/android/settings/applications/LockPatternActivity;->mRetryPattern:Z

    .line 345
    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-boolean v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mConfirming:Z

    if-eqz v0, :cond_3

    .line 349
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mPatternHash:[B

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1, p1}, Lcom/android/settings/applications/LockPatternActivity;->patternToHash(Ljava/util/List;)[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 350
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 351
    const v2, 0x7f0c0879

    .line 350
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 352
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 353
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 354
    const v2, 0x7f0c0878

    .line 353
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    :cond_1
    :goto_0
    return-void

    .line 356
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 358
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 361
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v1, v1, Lcom/android/settings/applications/LockPatternActivity;->mCancelPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 366
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 367
    const v2, 0x7f0c087b

    .line 366
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iput-boolean v6, v0, Lcom/android/settings/applications/LockPatternActivity;->mRetryPattern:Z

    .line 370
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1, p1}, Lcom/android/settings/applications/LockPatternActivity;->patternToHash(Ljava/util/List;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/applications/LockPatternActivity;->mPatternHash:[B

    .line 372
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 373
    const v2, 0x7f0c0876

    .line 372
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 378
    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mPatternHash:[B

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1, p1}, Lcom/android/settings/applications/LockPatternActivity;->patternToHash(Ljava/util/List;)[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 379
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LockPatternActivity;->setResult(I)V

    .line 380
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v0}, Lcom/android/settings/applications/LockPatternActivity;->finish()V

    goto/16 :goto_0

    .line 382
    :cond_5
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget v1, v0, Lcom/android/settings/applications/LockPatternActivity;->mRetry:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/settings/applications/LockPatternActivity;->mRetry:I

    .line 383
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 387
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v1, v1, Lcom/android/settings/applications/LockPatternActivity;->mCancelPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 389
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mRetry:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 390
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-static {v0}, Lcom/android/settings/applications/LockPatternActivity;->-wrap1(Lcom/android/settings/applications/LockPatternActivity;)V

    .line 391
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v1, v1, Lcom/android/settings/applications/LockPatternActivity;->mCancelPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 392
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v0}, Lcom/android/settings/applications/LockPatternActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 393
    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 395
    const-wide/16 v4, 0x1e

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    .line 394
    const v3, 0x7f0c0887

    .line 393
    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 392
    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 397
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-static {v0}, Lcom/android/settings/applications/LockPatternActivity;->-wrap2(Lcom/android/settings/applications/LockPatternActivity;)V

    goto/16 :goto_0
.end method

.method public onPatternStart()V
    .locals 3

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v1, v1, Lcom/android/settings/applications/LockPatternActivity;->mCancelPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 324
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 325
    const v2, 0x7f0c0874

    .line 324
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 321
    return-void
.end method
