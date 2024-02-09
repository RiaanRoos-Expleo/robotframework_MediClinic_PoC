import rsaidnumber
import random
from random import randint
from random import randint
from robot.api.deco import keyword
from datetime import date
import string

import rsaidnumber



today = date.today()

today_date = date.today().strftime("%d%m%y")
date_today = today.strftime("%Y%m%d")

today_date = today.strftime("%YYYY%m%d")


__version__ = '1.0.0'



class CreateUniqueNumbers:

    def __init__(self):
        ROBOT_LIBRARY_VERSION = __version__
        ROBOT_LIBRARY_SCOPE = 'GLOBAL'

    @keyword
    def get_unique_mobile_number(self):
        n = 9
        range_start = 10**(n-1)
        range_end = (10**n)-1
        return str(randint(range_start, range_end))

    @keyword
    def generate_sa_phone_number():
        # South African phone numbers start with '0' followed by a network code
        network_codes = ['71', '72', '73', '74', '81', '82', '83', '84', '86', '87']
        network_code = random.choice(network_codes)
        
        # The remaining 8 digits are random
        remaining_digits = ''.join(random.choices('0123456789', k=8))
        
        # Construct the full phone number
        phone_number = f'0{network_code}{remaining_digits}'
 
        return phone_number
    
    # Generate and print a South African phone number
    print(generate_sa_phone_number())
    
    @keyword
    def get_unique_bank_account_number_absa(self):
        n = 10
        range_start = 10**(n-1)
        range_end = (10**n)-1
        return str(randint(range_start, range_end))
    
    @keyword
    def get_random_name(self):
        n = 9
        s = string.ascii_lowercase 
        s2 = ''.join(random.sample(s, n))
        return str(s2)
    
    @keyword
    def get_valid_rsa_id_number(self):
        id_number = rsaidnumber
        #id_number.valid
        return str(id_number)
