  .syntax unified
  .global main
  .type main, %function

main:
  bl init

start:
  mov r7,#0@counter,counts the number of the notes

G:@196,0.25s
  mov r4,#122
  mov r5,#123
  mov r6,#12000
loop:
  mov r0,#0x7FFF
  bl BSP_AUDIO_OUT_Play_Sample
  subs r6,#1
  cmp r6,#0
  beq end
  subs r4,#1
  mov r5,#123
  bne loop
  beq loop1
loop1:
  mov r0,#0x8000
  bl BSP_AUDIO_OUT_Play_Sample
  subs r6,#1
  cmp r6,#0
  beq end
  subs r5,#1
  mov r4,#122
  bne loop1
  beq loop

Gs:@196,0.5s
  mov r4,#122
  mov r5,#123
  mov r6,#24000
loops:
  mov r0,#0x7FFF
  bl BSP_AUDIO_OUT_Play_Sample
  subs r6,#1
  cmp r6,#0
  beq end
  subs r4,#1
  mov r5,#123
  bne loops
  beq loops1
loops1:
  mov r0,#0x8000
  bl BSP_AUDIO_OUT_Play_Sample
  subs r6,#1
  cmp r6,#0
  beq end
  subs r5,#1
  mov r4,#122
  bne loops1
  beq loops

F:@185,0.25s
  mov r4,#129
  mov r5,#130
  mov r6,#12000
loopss:
  mov r0,#0x7FFF
  bl BSP_AUDIO_OUT_Play_Sample
  subs r6,#1
  cmp r6,#0
  beq end
  subs r4,#1
  mov r5,#130
  bne loopss
  beq loopss1
loopss1:
  mov r0,#0x8000
  bl BSP_AUDIO_OUT_Play_Sample
  subs r6,#1
  cmp r6,#0
  beq end
  subs r5,#1
  mov r4,#129
  bne loopss1
  beq loopss

Fs:@185,0.5s
  mov r4,#129
  mov r5,#130
  mov r6,#24000
loopsss:
  mov r0,#0x7FFF
  bl BSP_AUDIO_OUT_Play_Sample
  subs r6,#1
  cmp r6,#0
  beq end
  subs r4,#1
  mov r5,#130
  bne loopsss
  beq loopsss1
loopsss1:
  mov r0,#0x8000
  bl BSP_AUDIO_OUT_Play_Sample
  subs r6,#1
  cmp r6,#0
  beq end
  subs r5,#1
  mov r4,#129
  bne loopsss1
  beq loopsss

A:@220,0.25s
  mov r4,#109
  mov r5,#109
  mov r6,#12000
loopssss:
  mov r0,#0x7FFF
  bl BSP_AUDIO_OUT_Play_Sample
  subs r6,#1
  cmp r6,#0
  beq end
  subs r4,#1
  mov r5,#109
  bne loopssss
  beq loopssss1
loopssss1:
  mov r0,#0x8000
  bl BSP_AUDIO_OUT_Play_Sample
  subs r6,#1
  cmp r6,#0
  beq end
  subs r5,#1
  mov r4,#109
  bne loopssss1
  beq loopssss

As:@220,0.5s
  mov r4,#109
  mov r5,#109
  mov r6,#24000
loopsssss:
  mov r0,#0x7FFF
  bl BSP_AUDIO_OUT_Play_Sample
  subs r6,#1
  cmp r6,#0
  beq end
  subs r4,#1
  mov r5,#109
  bne loopsssss
  beq loopsssss1
loopsssss1:
  mov r0,#0x8000
  bl BSP_AUDIO_OUT_Play_Sample
  subs r6,#1
  cmp r6,#0
  beq end
  subs r5,#1
  mov r4,#109
  bne loopsssss1
  beq loopsssss

B:@246.94,0.5s
  mov r4,#97
  mov r5,#97
  mov r6,#24000
loopssssss:
  mov r0,#0x7FFF
  bl BSP_AUDIO_OUT_Play_Sample
  subs r6,#1
  cmp r6,#0
  beq end
  subs r4,#1
  mov r5,#97
  bne loopssssss
  beq loopssssss1
loopssssss1:
  mov r0,#0x8000
  bl BSP_AUDIO_OUT_Play_Sample
  subs r6,#1
  cmp r6,#0
  beq end
  subs r5,#1
  mov r4,#97
  bne loopssssss1
  beq loopssssss

setup:@pause branch, acts to pause the music for a certain of times
  mov r0,#0
  mov r6,#12000
empty:
  bl BSP_AUDIO_OUT_Play_Sample
  subs r6,#1
  cmp r6,#0
  bne empty
  beq end
end:@play the music
  adds r7,#1
  cmp r7,#1
  beq F
  cmp r7,#2
  beq G
  cmp r7,#3
  beq G
  cmp r7,#4
  beq As
  cmp r7,#5
  beq Gs
  cmp r7,#6
  beq Fs
  cmp r7,#7
  beq G
  cmp r7,#8
  beq B
  cmp r7,#9
  beq G
  cmp r7,#10
  beq setup
  cmp r7,#11
  beq G
  cmp r7,#12
  beq F
  cmp r7,#13
  beq G
  cmp r7,#14
  beq G
  cmp r7,#15
  beq A
  cmp r7,#16
  beq setup
  cmp r7,#17
  beq G
  cmp r7,#18
  beq setup
  cmp r7,#19
  beq F
  cmp r7,#20
  beq setup
  cmp r7,#21
  beq G
  cmp r7,#22
  beq setup
  cmp r7,#23
  beq B
  cmp r7,#24
  beq G
  cmp r7,#25
  beq setup
  cmp r7,#26
  beq start