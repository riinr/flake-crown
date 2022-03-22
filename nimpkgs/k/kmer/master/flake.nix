{
  description = ''dna kmer ops for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-kmer-master.flake = false;
  inputs.src-kmer-master.ref   = "refs/heads/master";
  inputs.src-kmer-master.owner = "brentp";
  inputs.src-kmer-master.repo  = "nim-kmer";
  inputs.src-kmer-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-kmer-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-kmer-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}