.class Lcom/csipsimple/ui/PickupSipUri$1;
.super Ljava/lang/Object;
.source "PickupSipUri.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/ui/PickupSipUri;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/ui/PickupSipUri;


# direct methods
.method constructor <init>(Lcom/csipsimple/ui/PickupSipUri;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/ui/PickupSipUri$1;->this$0:Lcom/csipsimple/ui/PickupSipUri;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "action"    # I
    .param p3, "arg2"    # Landroid/view/KeyEvent;

    .prologue
    .line 73
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/csipsimple/ui/PickupSipUri$1;->this$0:Lcom/csipsimple/ui/PickupSipUri;

    invoke-static {v0}, Lcom/csipsimple/ui/PickupSipUri;->access$0(Lcom/csipsimple/ui/PickupSipUri;)V

    .line 75
    const/4 v0, 0x1

    .line 77
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
