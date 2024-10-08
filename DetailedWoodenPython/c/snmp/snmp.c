#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <net-snmp/net-snmp-config.h>
#include <net-snmp/net-snmp-includes.h>

void init_snmp_session(struct snmp_session *session, const char *peername, const char *community) {
    snmp_sess_init(session);
    session->version = SNMP_VERSION_2c;
    session->peername = strdup(peername); //IP Addr of target device
    session->community = (u_char *)strdup(community); //SNMP community str
    session->community_len = strlen(community);
}

void snmp_get(const char *oid_str, const char *device_ip, const char *community) {
    struct snmp_session session, *sess_handle;
    struct snmp_pdu *pdu;
    struct snmp_pdu *response;
    oid anOID[MAX_OID_LEN];
    size_t anOID_len = MAX_OID_LEN;
    struct variable_list *vars;
    int status;

    //Init sess
    init_snmp_session(&session, device_ip, community);

    //Open session
    sess_handle = snmp_open(&session);
    if(!sess_handle) {
        snmp_error("snmp_open");
        exit(1);
    }

    //Create PDU for SNMP GET req
    pdu = snmp_pdu_create(SNMP_MSG_GET);

    //Parse OID
    if(!snmp_parse_oid(oid_str, anOID, &anOID_len)) {
        snmp_error("snmp_parse_oid");
        snmp_close(sess_handle);
        exit(1);
    }

    //Add OID to PDU
    snmp_add_null_var(pdu, anOID, anOID_len);

    //Send req
    status = snmp_synch_response(sess_handle, pdu, &response);

    if(status == STAT_SUCCESS && response->errstat == SNMP_ERR_NOERROR) {
        //Process response
        for(vars = )
    }
}