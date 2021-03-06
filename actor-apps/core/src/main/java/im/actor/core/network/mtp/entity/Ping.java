/*
 * Copyright (C) 2015 Actor LLC. <https://actor.im>
 */

package im.actor.core.network.mtp.entity;


import java.io.IOException;

import im.actor.runtime.bser.DataInput;
import im.actor.runtime.bser.DataOutput;

public class Ping extends ProtoStruct {

    public static final byte HEADER = (byte) 0x01;

    private long randomId;

    public Ping(DataInput stream) throws IOException {
        super(stream);
    }

    public Ping(long randomId) {
        this.randomId = randomId;
    }

    public long getRandomId() {
        return randomId;
    }

    @Override
    protected byte getHeader() {
        return HEADER;
    }

    @Override
    protected void writeBody(DataOutput bs) throws IOException {
        bs.writeLong(randomId);
    }

    @Override
    protected void readBody(DataInput bs) throws IOException {
        randomId = bs.readLong();
    }

    @Override
    public String toString() {
        return "Ping{" + randomId + "}";
    }
}
