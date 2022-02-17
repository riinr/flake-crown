{
  description = ''High performance http server (https://tools.ietf.org/html/rfc2616) with persistent connection for nim language.'';
  inputs.src-zfblast-v0_2_4.flake = false;
  inputs.src-zfblast-v0_2_4.type = "github";
  inputs.src-zfblast-v0_2_4.owner = "zendbit";
  inputs.src-zfblast-v0_2_4.repo = "nim.zfblast";
  inputs.src-zfblast-v0_2_4.ref = "refs/tags/v0.2.4";
  
  
  inputs."uri3".type = "github";
  inputs."uri3".owner = "riinr";
  inputs."uri3".repo = "flake-nimble";
  inputs."uri3".ref = "flake-pinning";
  inputs."uri3".dir = "nimpkgs/u/uri3";

  
  inputs."sha1".type = "github";
  inputs."sha1".owner = "riinr";
  inputs."sha1".repo = "flake-nimble";
  inputs."sha1".ref = "flake-pinning";
  inputs."sha1".dir = "nimpkgs/s/sha1";

  outputs = { self, nixpkgs, src-zfblast-v0_2_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zfblast-v0_2_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zfblast-v0_2_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}