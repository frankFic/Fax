.class public final enum Lorg/pjsip/pjsua/pj_qos_type;
.super Ljava/lang/Enum;
.source "pj_qos_type.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/pjsip/pjsua/pj_qos_type$SwigNext;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/pjsip/pjsua/pj_qos_type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/pjsip/pjsua/pj_qos_type;

.field public static final enum PJ_QOS_TYPE_BACKGROUND:Lorg/pjsip/pjsua/pj_qos_type;

.field public static final enum PJ_QOS_TYPE_BEST_EFFORT:Lorg/pjsip/pjsua/pj_qos_type;

.field public static final enum PJ_QOS_TYPE_CONTROL:Lorg/pjsip/pjsua/pj_qos_type;

.field public static final enum PJ_QOS_TYPE_VIDEO:Lorg/pjsip/pjsua/pj_qos_type;

.field public static final enum PJ_QOS_TYPE_VOICE:Lorg/pjsip/pjsua/pj_qos_type;


# instance fields
.field private final swigValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lorg/pjsip/pjsua/pj_qos_type;

    const-string v1, "PJ_QOS_TYPE_BEST_EFFORT"

    invoke-direct {v0, v1, v2}, Lorg/pjsip/pjsua/pj_qos_type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pjsip/pjsua/pj_qos_type;->PJ_QOS_TYPE_BEST_EFFORT:Lorg/pjsip/pjsua/pj_qos_type;

    .line 13
    new-instance v0, Lorg/pjsip/pjsua/pj_qos_type;

    const-string v1, "PJ_QOS_TYPE_BACKGROUND"

    invoke-direct {v0, v1, v3}, Lorg/pjsip/pjsua/pj_qos_type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pjsip/pjsua/pj_qos_type;->PJ_QOS_TYPE_BACKGROUND:Lorg/pjsip/pjsua/pj_qos_type;

    .line 14
    new-instance v0, Lorg/pjsip/pjsua/pj_qos_type;

    const-string v1, "PJ_QOS_TYPE_VIDEO"

    invoke-direct {v0, v1, v4}, Lorg/pjsip/pjsua/pj_qos_type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pjsip/pjsua/pj_qos_type;->PJ_QOS_TYPE_VIDEO:Lorg/pjsip/pjsua/pj_qos_type;

    .line 15
    new-instance v0, Lorg/pjsip/pjsua/pj_qos_type;

    const-string v1, "PJ_QOS_TYPE_VOICE"

    invoke-direct {v0, v1, v5}, Lorg/pjsip/pjsua/pj_qos_type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pjsip/pjsua/pj_qos_type;->PJ_QOS_TYPE_VOICE:Lorg/pjsip/pjsua/pj_qos_type;

    .line 16
    new-instance v0, Lorg/pjsip/pjsua/pj_qos_type;

    const-string v1, "PJ_QOS_TYPE_CONTROL"

    invoke-direct {v0, v1, v6}, Lorg/pjsip/pjsua/pj_qos_type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pjsip/pjsua/pj_qos_type;->PJ_QOS_TYPE_CONTROL:Lorg/pjsip/pjsua/pj_qos_type;

    .line 11
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/pjsip/pjsua/pj_qos_type;

    sget-object v1, Lorg/pjsip/pjsua/pj_qos_type;->PJ_QOS_TYPE_BEST_EFFORT:Lorg/pjsip/pjsua/pj_qos_type;

    aput-object v1, v0, v2

    sget-object v1, Lorg/pjsip/pjsua/pj_qos_type;->PJ_QOS_TYPE_BACKGROUND:Lorg/pjsip/pjsua/pj_qos_type;

    aput-object v1, v0, v3

    sget-object v1, Lorg/pjsip/pjsua/pj_qos_type;->PJ_QOS_TYPE_VIDEO:Lorg/pjsip/pjsua/pj_qos_type;

    aput-object v1, v0, v4

    sget-object v1, Lorg/pjsip/pjsua/pj_qos_type;->PJ_QOS_TYPE_VOICE:Lorg/pjsip/pjsua/pj_qos_type;

    aput-object v1, v0, v5

    sget-object v1, Lorg/pjsip/pjsua/pj_qos_type;->PJ_QOS_TYPE_CONTROL:Lorg/pjsip/pjsua/pj_qos_type;

    aput-object v1, v0, v6

    sput-object v0, Lorg/pjsip/pjsua/pj_qos_type;->ENUM$VALUES:[Lorg/pjsip/pjsua/pj_qos_type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    invoke-static {}, Lorg/pjsip/pjsua/pj_qos_type$SwigNext;->access$0()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Lorg/pjsip/pjsua/pj_qos_type$SwigNext;->access$1(I)V

    iput v0, p0, Lorg/pjsip/pjsua/pj_qos_type;->swigValue:I

    .line 35
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "swigValue"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput p3, p0, Lorg/pjsip/pjsua/pj_qos_type;->swigValue:I

    .line 40
    add-int/lit8 v0, p3, 0x1

    invoke-static {v0}, Lorg/pjsip/pjsua/pj_qos_type$SwigNext;->access$1(I)V

    .line 41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/pjsip/pjsua/pj_qos_type;)V
    .locals 1
    .param p3, "swigEnum"    # Lorg/pjsip/pjsua/pj_qos_type;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iget v0, p3, Lorg/pjsip/pjsua/pj_qos_type;->swigValue:I

    iput v0, p0, Lorg/pjsip/pjsua/pj_qos_type;->swigValue:I

    .line 46
    iget v0, p0, Lorg/pjsip/pjsua/pj_qos_type;->swigValue:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lorg/pjsip/pjsua/pj_qos_type$SwigNext;->access$1(I)V

    .line 47
    return-void
.end method

.method public static swigToEnum(I)Lorg/pjsip/pjsua/pj_qos_type;
    .locals 5
    .param p0, "swigValue"    # I

    .prologue
    .line 23
    const-class v2, Lorg/pjsip/pjsua/pj_qos_type;

    invoke-virtual {v2}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/pjsip/pjsua/pj_qos_type;

    .line 24
    .local v1, "swigValues":[Lorg/pjsip/pjsua/pj_qos_type;
    array-length v2, v1

    if-ge p0, v2, :cond_1

    if-ltz p0, :cond_1

    aget-object v2, v1, p0

    iget v2, v2, Lorg/pjsip/pjsua/pj_qos_type;->swigValue:I

    if-ne v2, p0, :cond_1

    .line 25
    aget-object v0, v1, p0

    .line 28
    :cond_0
    return-object v0

    .line 26
    :cond_1
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_2

    .line 29
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No enum "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v4, Lorg/pjsip/pjsua/pj_qos_type;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 26
    :cond_2
    aget-object v0, v1, v2

    .line 27
    .local v0, "swigEnum":Lorg/pjsip/pjsua/pj_qos_type;
    iget v4, v0, Lorg/pjsip/pjsua/pj_qos_type;->swigValue:I

    if-eq v4, p0, :cond_0

    .line 26
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_qos_type;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/pjsip/pjsua/pj_qos_type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/pjsip/pjsua/pj_qos_type;

    return-object v0
.end method

.method public static values()[Lorg/pjsip/pjsua/pj_qos_type;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/pjsip/pjsua/pj_qos_type;->ENUM$VALUES:[Lorg/pjsip/pjsua/pj_qos_type;

    array-length v1, v0

    new-array v2, v1, [Lorg/pjsip/pjsua/pj_qos_type;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final swigValue()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lorg/pjsip/pjsua/pj_qos_type;->swigValue:I

    return v0
.end method
