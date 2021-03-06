import keymirror from 'keymirror';
import app from '../../app.json';

export const AuthSteps = {
  PHONE_WAIT: 1,
  CODE_WAIT: 2,
  SIGNUP_NAME_WAIT: 3,
  COMPLETED: 4
};

export const ActionTypes = keymirror({
  APP_HIDDEN: null,
  APP_VISIBLE: null,

  AUTH_SMS_REQUEST_SUCCESS: null,
  AUTH_SMS_REQUEST_FAILURE: null,

  SEND_CODE_SUCCESS: null,
  SEND_CODE_FAILURE: null,

  SEND_SIGNUP_SUCCESS: null,
  SEND_SIGNUP_FAILURE: null,

  SET_LOGGED_IN: null,
  SET_LOGGED_OUT: null,
  START_SIGNUP: null,

  AUTH_WRONG_NUMBER_CLICK: null,

  DIALOGS_CHANGED: null,
  SELECT_DIALOG_PEER: null,
  SELECTED_DIALOG_INFO_CHANGED: null,

  COMPOSE_CLEAN: null,
  COMPOSE_TYPING: null,
  COMPOSE_MENTION_INSERT: null,
  COMPOSE_MENTION_CLOSE: null,

  SEND_MESSAGE_TEXT: null,
  SEND_MESSAGE_FILE: null,
  SEND_MESSAGE_PHOTO: null,

  ACTIVITY_SHOW: null,
  ACTIVITY_HIDE: null,

  CONTACT_ADD: null,
  CONTACT_REMOVE: null,
  CONTACT_LIST_SHOW: null,
  CONTACT_LIST_HIDE: null,
  CONTACT_LIST_CHANGED: null,
  CONTACT_ADD_MODAL_SHOW: null,
  CONTACT_ADD_MODAL_HIDE: null,
  CONTACT_ADD_MODAL_FIND_USER_OK: null,
  CONTACT_ADD_MODAL_FIND_USER_UNREGISTERED: null,
  CONTACT_ADD_MODAL_FIND_USER_IN_CONTACT: null,

  CREATE_GROUP_MODAL_OPEN: null,
  CREATE_GROUP_MODAL_CLOSE: null,

  NOTIFICATION_CHANGE: null,

  DRAFT_LOAD: null,
  DRAFT_SAVE: null,

  APP_UPDATE_MODAL_SHOW: null,
  APP_UPDATE_MODAL_HIDE: null,
  APP_UPDATE_CONFIRM: null,

  GET_INTEGRATION_TOKEN: null,
  GET_INTEGRATION_TOKEN_SUCCESS: null,
  GET_INTEGRATION_TOKEN_ERROR: null,

  FAVICON_SET_DEFAULT: null,
  FAVICON_SET_NOTIFICATION: null,

  INVITE_USER_MODAL_SHOW: null,
  INVITE_USER_MODAL_HIDE: null,
  INVITE_USER_BY_LINK_MODAL_SHOW: null,
  INVITE_USER_BY_LINK_MODAL_HIDE: null,
  INVITE_USER: null,
  INVITE_USER_SUCCESS: null,
  INVITE_USER_ERROR: null,

  PREFERENCES_SAVE: null,
  PREFERENCES_LOAD: null,
  PREFERENCES_MODAL_HIDE: null,
  PREFERENCES_MODAL_SHOW: null,

  LEFT_GROUP: null,

  MY_PROFILE_MODAL_SHOW: null,
  MY_PROFILE_MODAL_HIDE: null,
  MY_PROFILE_SAVE_NAME: null,
  MY_PROFILE_SAVE_NICKNAME: null,

  KICK_USER: null,
  KICK_USER_SUCCESS: null,
  KICK_USER_ERROR: null
});

export const PeerTypes = {
  USER: 'user',
  GROUP: 'group'
};

export const ActivityTypes = keymirror({
  USER_PROFILE: null,
  GROUP_PROFILE: null
});

export const MessageContentTypes = {
  SERVICE: 'service',
  TEXT: 'text',
  PHOTO: 'photo',
  DOCUMENT: 'document',
  UNSUPPORTED: 'unsupported'
};

export const KeyCodes = {
  TAB: 9,
  ESC: 27,
  ENTER: 13,
  ARROW_UP: 38,
  ARROW_DOWN: 40
};

export const AsyncActionStates = {
  PENDING: 0,
  PROCESSING: 1,
  SUCCESS: 2,
  FAILURE: 3
};

export const version = app.base_version;

export const Mixpanel = app.mixpanel;

export const Support = {
  id: 576465533,
  phone: '+75551234567'
};

export default {
  AuthSteps: AuthSteps,

  PeerTypes: PeerTypes,

  ActionTypes: ActionTypes,

  ActivityTypes: ActivityTypes,

  MessageContentTypes: MessageContentTypes,

  KeyCodes: KeyCodes,

  ChangeState: AsyncActionStates,

  Mixpanel: Mixpanel,

  version: version,

  Support: Support
};
