.class public Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;
.super Lcom/actionbarsherlock/view/ActionMode;
.source "ActionBarImpl.java"

# interfaces
.implements Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/internal/app/ActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionModeImpl"
.end annotation


# instance fields
.field private mCallback:Lcom/actionbarsherlock/view/ActionMode$Callback;

.field private mCustomView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

.field final synthetic this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;


# direct methods
.method public constructor <init>(Lcom/actionbarsherlock/internal/app/ActionBarImpl;Lcom/actionbarsherlock/view/ActionMode$Callback;)V
    .locals 2
    .param p2, "callback"    # Lcom/actionbarsherlock/view/ActionMode$Callback;

    .prologue
    .line 663
    iput-object p1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    invoke-direct {p0}, Lcom/actionbarsherlock/view/ActionMode;-><init>()V

    .line 664
    iput-object p2, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->mCallback:Lcom/actionbarsherlock/view/ActionMode$Callback;

    .line 665
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 666
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    move-result-object v0

    .line 665
    iput-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    .line 667
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setCallback(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;)V

    .line 668
    return-void
.end method


# virtual methods
.method public dispatchOnCreate()Z
    .locals 2

    .prologue
    .line 722
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 724
    :try_start_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->mCallback:Lcom/actionbarsherlock/view/ActionMode$Callback;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Lcom/actionbarsherlock/view/ActionMode$Callback;->onCreateActionMode(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 726
    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 724
    return v0

    .line 725
    :catchall_0
    move-exception v0

    .line 726
    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 727
    throw v0
.end method

.method public finish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 682
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    iget-object v0, v0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mActionMode:Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;

    if-eq v0, p0, :cond_1

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 691
    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    iget-boolean v0, v0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mWasHiddenBeforeMode:Z

    if-eqz v0, :cond_2

    .line 692
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    iput-object p0, v0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mDeferredDestroyActionMode:Lcom/actionbarsherlock/view/ActionMode;

    .line 693
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->mCallback:Lcom/actionbarsherlock/view/ActionMode$Callback;

    iput-object v1, v0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mDeferredModeDestroyCallback:Lcom/actionbarsherlock/view/ActionMode$Callback;

    .line 697
    :goto_1
    iput-object v2, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->mCallback:Lcom/actionbarsherlock/view/ActionMode$Callback;

    .line 698
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->animateToMode(Z)V

    .line 701
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    invoke-static {v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->access$5(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->closeMode()V

    .line 702
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    invoke-static {v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->access$6(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)Lcom/actionbarsherlock/internal/widget/ActionBarView;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->sendAccessibilityEvent(I)V

    .line 704
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    iput-object v2, v0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mActionMode:Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;

    .line 706
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    iget-boolean v0, v0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mWasHiddenBeforeMode:Z

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->hide()V

    goto :goto_0

    .line 695
    :cond_2
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->mCallback:Lcom/actionbarsherlock/view/ActionMode$Callback;

    invoke-interface {v0, p0}, Lcom/actionbarsherlock/view/ActionMode$Callback;->onDestroyActionMode(Lcom/actionbarsherlock/view/ActionMode;)V

    goto :goto_1
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMenu()Lcom/actionbarsherlock/view/Menu;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;
    .locals 2

    .prologue
    .line 672
    new-instance v0, Lcom/actionbarsherlock/view/MenuInflater;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/actionbarsherlock/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    invoke-static {v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->access$5(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    invoke-static {v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->access$5(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 713
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 715
    :try_start_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->mCallback:Lcom/actionbarsherlock/view/ActionMode$Callback;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Lcom/actionbarsherlock/view/ActionMode$Callback;->onPrepareActionMode(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 717
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 719
    return-void

    .line 716
    :catchall_0
    move-exception v0

    .line 717
    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 718
    throw v0
.end method

.method public onCloseMenu(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 780
    return-void
.end method

.method public onCloseSubMenu(Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 796
    return-void
.end method

.method public onMenuItemSelected(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 772
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->mCallback:Lcom/actionbarsherlock/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->mCallback:Lcom/actionbarsherlock/view/ActionMode$Callback;

    invoke-interface {v0, p0, p2}, Lcom/actionbarsherlock/view/ActionMode$Callback;->onActionItemClicked(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    .line 775
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    .prologue
    .line 799
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->mCallback:Lcom/actionbarsherlock/view/ActionMode$Callback;

    if-nez v0, :cond_0

    .line 804
    :goto_0
    return-void

    .line 802
    :cond_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->invalidate()V

    .line 803
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    invoke-static {v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->access$5(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->showOverflowMenu()Z

    goto :goto_0
.end method

.method public onSubMenuSelected(Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;)Z
    .locals 3
    .param p1, "subMenu"    # Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;

    .prologue
    const/4 v0, 0x1

    .line 783
    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->mCallback:Lcom/actionbarsherlock/view/ActionMode$Callback;

    if-nez v1, :cond_1

    .line 784
    const/4 v0, 0x0

    .line 792
    :cond_0
    :goto_0
    return v0

    .line 787
    :cond_1
    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 791
    new-instance v1, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;

    iget-object v2, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    invoke-virtual {v2}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->show()V

    goto :goto_0
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 732
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    invoke-static {v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->access$5(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 733
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    .line 734
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 753
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    invoke-static {v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->access$7(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 754
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 738
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    invoke-static {v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->access$5(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 739
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 748
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    invoke-static {v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->access$7(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->setTitle(Ljava/lang/CharSequence;)V

    .line 749
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 743
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    invoke-static {v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->access$5(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 744
    return-void
.end method
