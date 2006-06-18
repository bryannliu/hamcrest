/*  Copyright (c) 2000-2006 hamcrest.org
 */
package org.hamcrest.core;

import org.hamcrest.Description;
import org.hamcrest.Matcher;
import org.hamcrest.Factory;


/**
 * Is the value the same object as another value?
 */
public class IsSame<T> implements Matcher<T> {
    private final T object;

    public IsSame(T object) {
        this.object = object;
    }

    public boolean match(T arg) {
        return arg == object;
    }

    public void describeTo(Description description) {
        description.appendText("same(") .appendValue(object) .appendText(")");
    }

    /**
     * Creates a new instance of IsSame
     *
     * @param object The predicate evaluates to true only when the argument is
     *               this object.
     */
    @Factory
    public static <T> Matcher<T> same(T object) {
        return new IsSame<T>(object);
    }

}
