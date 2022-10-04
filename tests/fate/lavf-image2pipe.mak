LAVF_IMAGE2PIPE = $(call ALLYES, $(1)_DECODER $(1)_ENCODER $(2)      \
                                 IMAGE2_DEMUXER PGMYUV_DECODER       \
                                 IMAGE2PIPE_MUXER IMAGE2PIPE_DEMUXER \
                                 RAWVIDEO_ENCODER CRC_MUXER          \
                                 FILE_PROTOCOL PIPE_PROTOCOL)

FATE_LAVF_IMAGE2PIPE-$(call LAVF_IMAGE2PIPE, PBM, PNM_PARSER SCALE_FILTER)  += pbmpipe
FATE_LAVF_IMAGE2PIPE-$(call LAVF_IMAGE2PIPE, PGM, PNM_PARSER SCALE_FILTER)  += pgmpipe
FATE_LAVF_IMAGE2PIPE-$(call LAVF_IMAGE2PIPE, PPM, PNM_PARSER SCALE_FILTER)  += ppmpipe

FATE_LAVF_IMAGE2PIPE = $(FATE_LAVF_IMAGE2PIPE-yes:%=fate-lavf-%)

$(FATE_LAVF_IMAGE2PIPE): CMD = lavf_image2pipe
$(FATE_LAVF_IMAGE2PIPE): REF = $(SRC_PATH)/tests/ref/lavf/$(@:fate-lavf-%=%)
$(FATE_LAVF_IMAGE2PIPE): $(VREF)

FATE_AVCONV += $(FATE_LAVF_IMAGE2PIPE)
fate-lavf-image2pipe fate-lavf: $(FATE_LAVF_IMAGE2PIPE)
