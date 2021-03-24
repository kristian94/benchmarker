import { configureStore, ThunkAction, Action } from '@reduxjs/toolkit';
import dataReducer from '../reducers/dataSlice'
import wasmMetaReducer from '../reducers/wasmMetaSlice'

export const store = configureStore({
  reducer: {
    data: dataReducer,
    wasmMeta: wasmMetaReducer
  },
});

export type RootState = ReturnType<typeof store.getState>;
export type AppThunk<ReturnType = void> = ThunkAction<
  ReturnType,
  RootState,
  unknown,
  Action<string>
>;
