// 목록 7-2: 해시 테이블을 리해시하는 루비 1.8.7의 C 코드

static void
rehash(table)
    register st_table *table;
{
    register st_table_entry *ptr, *next, **new_bins;
    int i, old_num_bins = table->num_bins, new_num_bins;
    unsigned int hash_val;
    new_num_bins = new_size(old_num_bins+1);
    new_bins = (st_table_entry**)Calloc(new_num_bins,
					sizeof(st_table_entry*));
    for(i = 0; i < old_num_bins; i++) {
	ptr = table->bins[i];
	while (ptr != 0) {
	    next = ptr->next;
	    hash_val = ptr->hash % new_num_bins;
	    ptr->next = new_bins[hash_val];
	    new_bins[hash_val] = ptr;
	    ptr = next;
	}
    }
    free(table->bins);
    table->num_bins = new_num_bins;
    table->bins = new_bins;
}
