.class public Lcom/csipsimple/wizards/impl/Pennytel;
.super Lcom/csipsimple/wizards/impl/SimpleImplementation;
.source "Pennytel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "Pennytel"

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string v0, "sip.pennytel.com"

    return-object v0
.end method
