#include <amxmodx> 
#include <amxmisc>
#define FILENAME "admin_konsol_log.log"




public plugin_init(){
	register_plugin("admin log yeni", "Asik Sirin", "1.3")

}


public client_command(id)
{

	if( !is_user_alive(id) )
	{
		return PLUGIN_CONTINUE;
	}
	

	new command[64];
	read_argv(0, command, charsmax(command));
	
	new command2[64];
	read_argv(1, command2, charsmax(command2));
	
	new command3[64];
	read_argv(2, command3, charsmax(command3));
	
	//log
	if(containi(command,"amx") != -1){
	
	new name[32],IP[33], id[33]
	
	get_user_name(id, name, sizeof(name)-1)
	get_user_ip(id, IP, 32, 1)
	get_user_authid(id, ID, 32)
		
	log_to_file(FILENAME, "Nick: %s IP: %s ID: %s Komut:%s %s %s ^n",name,openIP,openID,command,command2,command3);
	}
	
	return PLUGIN_CONTINUE;

} 

	
/* AMXX-Studio Notes - DO NOT MODIFY BELOW HERE
*{\\ rtf1\\ ansi\\ deff0{\\ fonttbl{\\ f0\\ fnil Tahoma;}}\n\\ viewkind4\\ uc1\\ pard\\ lang1055\\ f0\\ fs16 \n\\ par }
*/
