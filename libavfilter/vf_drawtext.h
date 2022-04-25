/*
 * Copyright (c) 2011 Stefano Sabatini
 * Copyright (c) 2010 S.N. Hemanth Meenakshisundaram
 * Copyright (c) 2003 Gustavo Sverzut Barbieri <gsbarbieri@yahoo.com.br>
 *
 * This file is part of FFmpeg.
 *
 * FFmpeg is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * FFmpeg is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with FFmpeg; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
 */


int func_bincode(AVFilterContext *ctx, AVBPrint *bp, char *fct, unsigned argc, char **argv, int tag);
int func_bincodens(AVFilterContext *ctx, AVBPrint *bp, char *fct, unsigned argc, char **argv, int tag);
int func_tod(AVFilterContext *ctx, AVBPrint *bp, char *fct, unsigned argc, char **argv, int tag);
int get_offset_secs(AVFilterContext *ctx, long offset, long *sec, long *ns);
