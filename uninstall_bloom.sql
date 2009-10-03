DROP OPERATOR CLASS IF EXISTS int4_ops USING bloom CASCADE; 
DROP OPERATOR CLASS IF EXISTS text_ops USING bloom CASCADE; 

DELETE FROM pg_am WHERE amname='bloom';

DROP FUNCTION IF EXISTS blbuild(internal) CASCADE;
DROP FUNCTION IF EXISTS blinsert(internal) CASCADE;
DROP FUNCTION IF EXISTS bloptions(internal) CASCADE;
DROP FUNCTION IF EXISTS blbeginscan(internal) CASCADE;
DROP FUNCTION IF EXISTS blrescan(internal) CASCADE;
DROP FUNCTION IF EXISTS blendscan(internal) CASCADE;
DROP FUNCTION IF EXISTS blmarkpos(internal) CASCADE;
DROP FUNCTION IF EXISTS blrestrpos(internal) CASCADE;
DROP FUNCTION IF EXISTS blgetbitmap(internal) CASCADE;
DROP FUNCTION IF EXISTS blbulkdelete(internal) CASCADE;
DROP FUNCTION IF EXISTS blvacuumcleanup(internal) CASCADE;
DROP FUNCTION IF EXISTS blcostestimate(internal) CASCADE;
