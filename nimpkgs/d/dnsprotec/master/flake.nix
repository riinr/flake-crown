{
  description = ''DNS /etc/hosts file manager, Block 1 Million malicious domains with 1 command'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-dnsprotec-master.flake = false;
  inputs.src-dnsprotec-master.ref   = "refs/heads/master";
  inputs.src-dnsprotec-master.owner = "juancarlospaco";
  inputs.src-dnsprotec-master.repo  = "nim-dnsprotec";
  inputs.src-dnsprotec-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-dnsprotec-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-dnsprotec-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}