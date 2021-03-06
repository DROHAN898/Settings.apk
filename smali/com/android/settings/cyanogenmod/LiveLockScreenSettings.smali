.class public Lcom/android/settings/cyanogenmod/LiveLockScreenSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LiveLockScreenSettings.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenInfoAdapter;,
        Lcom/android/settings/cyanogenmod/LiveLockScreenSettings$PackageReceiver;,
        Lcom/android/settings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/android/settings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenInfoAdapter;

.field private mBackend:Lcom/android/settings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend;

.field private mContext:Landroid/content/Context;

.field private final mPackageReceiver:Lcom/android/settings/cyanogenmod/LiveLockScreenSettings$PackageReceiver;

.field private mRefreshing:Z

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method static synthetic -get0(Lcom/android/settings/cyanogenmod/LiveLockScreenSettings;)Lcom/android/settings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings;->mBackend:Lcom/android/settings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    invoke-static {p0, p1}, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/cyanogenmod/LiveLockScreenSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings;->refreshFromBackend()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-class v0, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings;->TAG:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 75
    new-instance v0, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings$PackageReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings$PackageReceiver;-><init>(Lcom/android/settings/cyanogenmod/LiveLockScreenSettings;Lcom/android/settings/cyanogenmod/LiveLockScreenSettings$PackageReceiver;)V

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings;->mPackageReceiver:Lcom/android/settings/cyanogenmod/LiveLockScreenSettings$PackageReceiver;

    .line 69
    return-void
.end method

.method private static varargs logd(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 188
    return-void
.end method

.method private refreshFromBackend()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 172
    const-string/jumbo v2, "refreshFromBackend()"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings;->mRefreshing:Z

    .line 174
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings;->mBackend:Lcom/android/settings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend;

    invoke-virtual {v2}, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend;->isEnabled()Z

    move-result v0

    .line 175
    .local v0, "liveLockScreenEnabled":Z
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v2

    if-eq v2, v0, :cond_0

    .line 176
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 179
    :cond_0
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings;->mAdapter:Lcom/android/settings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenInfoAdapter;

    invoke-virtual {v2}, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenInfoAdapter;->clear()V

    .line 180
    if-eqz v0, :cond_1

    .line 182
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings;->mBackend:Lcom/android/settings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend;

    invoke-virtual {v2}, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend;->getLiveLockScreenInfos()Ljava/util/List;

    move-result-object v1

    .line 183
    .local v1, "liveLockScreenInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;>;"
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings;->mAdapter:Lcom/android/settings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenInfoAdapter;

    invoke-virtual {v2, v1}, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenInfoAdapter;->addAll(Ljava/util/Collection;)V

    .line 185
    .end local v1    # "liveLockScreenInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend$LiveLockScreenInfo;>;"
    :cond_1
    iput-boolean v4, p0, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings;->mRefreshing:Z

    .line 171
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 92
    const/16 v0, 0xc4

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 128
    const-string/jumbo v3, "onActivityCreated(%s)"

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 132
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x1020004

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 135
    .local v0, "emptyView":Landroid/widget/TextView;
    const v3, 0x7f0c038e

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 136
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 138
    new-instance v3, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenInfoAdapter;

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenInfoAdapter;-><init>(Lcom/android/settings/cyanogenmod/LiveLockScreenSettings;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings;->mAdapter:Lcom/android/settings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenInfoAdapter;

    .line 139
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings;->mAdapter:Lcom/android/settings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenInfoAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SettingsActivity;

    .line 142
    .local v2, "sa":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v2}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 143
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 144
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 127
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 85
    const-string/jumbo v0, "onAttach(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 87
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings;->mContext:Landroid/content/Context;

    .line 84
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 97
    const-string/jumbo v0, "onCreate(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 100
    new-instance v0, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings;->mBackend:Lcom/android/settings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend;

    .line 96
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 119
    const-string/jumbo v0, "onDestroyView()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 122
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 123
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 118
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 149
    const-string/jumbo v0, "onPause()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 152
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings;->mPackageReceiver:Lcom/android/settings/cyanogenmod/LiveLockScreenSettings$PackageReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 148
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 157
    const-string/jumbo v1, "onResume()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 159
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings;->refreshFromBackend()V

    .line 162
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 163
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings;->mPackageReceiver:Lcom/android/settings/cyanogenmod/LiveLockScreenSettings$PackageReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 156
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 113
    const-string/jumbo v0, "onStart()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 112
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings;->mRefreshing:Z

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings;->mBackend:Lcom/android/settings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend;

    invoke-virtual {v0, p2}, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings$LiveLockScreenBackend;->setEnabled(Z)V

    .line 107
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/LiveLockScreenSettings;->refreshFromBackend()V

    .line 104
    :cond_0
    return-void
.end method
