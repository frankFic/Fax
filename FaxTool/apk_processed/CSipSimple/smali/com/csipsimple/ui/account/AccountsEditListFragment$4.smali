.class Lcom/csipsimple/ui/account/AccountsEditListFragment$4;
.super Ljava/lang/Object;
.source "AccountsEditListFragment.java"

# interfaces
.implements Lcom/csipsimple/widgets/DragnDropListView$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/ui/account/AccountsEditListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/ui/account/AccountsEditListFragment;

.field private final synthetic val$lv:Lcom/csipsimple/widgets/DragnDropListView;


# direct methods
.method constructor <init>(Lcom/csipsimple/ui/account/AccountsEditListFragment;Lcom/csipsimple/widgets/DragnDropListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/ui/account/AccountsEditListFragment$4;->this$0:Lcom/csipsimple/ui/account/AccountsEditListFragment;

    iput-object p2, p0, Lcom/csipsimple/ui/account/AccountsEditListFragment$4;->val$lv:Lcom/csipsimple/widgets/DragnDropListView;

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 13
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 248
    invoke-static {}, Lcom/csipsimple/ui/account/AccountsEditListFragment;->access$0()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Drop from "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v8, p0, Lcom/csipsimple/ui/account/AccountsEditListFragment$4;->val$lv:Lcom/csipsimple/widgets/DragnDropListView;

    invoke-virtual {v8}, Lcom/csipsimple/widgets/DragnDropListView;->getHeaderViewsCount()I

    move-result v3

    .line 250
    .local v3, "hvC":I
    sub-int v8, p1, v3

    invoke-static {v11, v8}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 251
    sub-int v8, p2, v3

    invoke-static {v11, v8}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 255
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v6, "orderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v8, p0, Lcom/csipsimple/ui/account/AccountsEditListFragment$4;->this$0:Lcom/csipsimple/ui/account/AccountsEditListFragment;

    invoke-virtual {v8}, Lcom/csipsimple/ui/account/AccountsEditListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/CursorAdapter;

    .line 257
    .local v0, "ad":Landroid/support/v4/widget/CursorAdapter;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCount()I

    move-result v8

    if-lt v4, v8, :cond_1

    .line 261
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 262
    .local v5, "moved":Ljava/lang/Long;
    invoke-virtual {v6, p2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 265
    iget-object v8, p0, Lcom/csipsimple/ui/account/AccountsEditListFragment$4;->this$0:Lcom/csipsimple/ui/account/AccountsEditListFragment;

    invoke-virtual {v8}, Lcom/csipsimple/ui/account/AccountsEditListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 266
    iget-object v8, p0, Lcom/csipsimple/ui/account/AccountsEditListFragment$4;->this$0:Lcom/csipsimple/ui/account/AccountsEditListFragment;

    invoke-virtual {v8}, Lcom/csipsimple/ui/account/AccountsEditListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 267
    .local v1, "cr":Landroid/content/ContentResolver;
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v4, v8, :cond_2

    .line 274
    .end local v1    # "cr":Landroid/content/ContentResolver;
    :cond_0
    return-void

    .line 258
    .end local v5    # "moved":Ljava/lang/Long;
    :cond_1
    invoke-virtual {v0, v4}, Landroid/support/v4/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 268
    .restart local v1    # "cr":Landroid/content/ContentResolver;
    .restart local v5    # "moved":Ljava/lang/Long;
    :cond_2
    sget-object v9, Lcom/csipsimple/api/SipProfile;->ACCOUNT_ID_URI_BASE:Landroid/net/Uri;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 269
    .local v7, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 270
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v8, "priority"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 271
    invoke-virtual {v1, v7, v2, v12, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 267
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method
