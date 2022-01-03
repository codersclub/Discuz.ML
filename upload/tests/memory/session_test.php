<?php

class SessionTest
{
        private $bymem;

        private $testData;

        public function setUp() {
                $this->bymem = new memory_common_session();

                $this->testData = array(
                        array(
                                'sid' => 'abcdef',
                                'ip' => '192.168.1.1',
                                'uid' => '12',
                                'username' => 'user1',
                                'groupid' => '1',
                                'invisible' => '0',
                                'action' => 'test',
                                'lastactivity' => 1577539704,
                                'lastolupdate' => 1577539704,
                                'fid' => '2',
                                'tid' => '3'
                        ),
                        array( // Same IP, same fid, same tid as last user
                                'sid' => 'dkfjie',
                                'ip' => '192.168.1.1',
                                'uid' => '13',
                                'username' => 'user2',
                                'groupid' => '2',
                                'invisible' => '0',
                                'action' => 'test',
                                'lastactivity' => 1577548700,
                                'lastolupdate' => 1577538704,
                                'fid' => '2',
                                'tid' => '3'
                        ),
                        array( // Same uid as the first user, but different IP
                                'sid' => '88uuii',
                                'ip' => '::1',
                                'uid' => '12',
                                'username' => 'user1',
                                'groupid' => '1',
                                'invisible' => '0',
                                'action' => 'test',
                                'lastactivity' => 1577539604,
                                'lastolupdate' => 1577539604,
                                'fid' => '1',
                                'tid' => '5'
                        ),
                );

        }

        private function insertAll() {
                C::memory()->clear();
                foreach ($this->testData as $data) {
                        $this->bymem->insert($data);
                }
        }

        public function testInsert() {
                $this->insertAll();
                assertEqual($this->bymem->count(), sizeof($this->testData));
        }

        public function testByIp() {
                $this->insertAll();

                // Reverse order by lastactivity
                $items = $this->bymem->fetch_all_by_ip('192.168.1.1');
                assertEqual($items[0]['sid'], 'dkfjie');
                assertEqual($items[1]['sid'], 'abcdef');

                assertEqual($this->bymem->count_by_ip('192.168.1.1'), 2);
        }

        public function testByFid() {
                $this->insertAll();

                $items = $this->bymem->fetch_all_by_fid(2);
                assertEqual($items[0]['uid'], '13');
                assertEqual($items[1]['uid'], '12');

                assertEqual(2, $this->bymem->count_by_fid(2));
        }

}